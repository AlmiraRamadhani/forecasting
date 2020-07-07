<?php
class FTM
{
	public $y;
	public $n_periode;
	public $x;
	public $xy;
	public $x_kuadrat;
	public $max_periode;

	public $musim;
	public $rata;
	public $indeks_musim;
	public $y_star;
	public $err;
	public $err_abs;
	public $err_square;
	public $err_yt;

	function __construct($y, $n_periode)
	{
		$this->y = $y;
		$this->n_periode = $n_periode;
		$this->hitung();
	}

	function hitung()
	{
		$a = 0;
		foreach ($this->y as $key => $val) {
			$this->x[$key] = $a++;
			$this->musim[$key % 12][] = $val;
		}
		$this->rata = array();
		foreach ($this->musim as $key => $val) {
			$this->rata[$key] = array_sum($val) / count($val);
		}
		//echo '<pre>' . print_r($this->rata, 1) . '</pre>';

		foreach ($this->y as $key => $val) {
			$this->xy[$key] = $this->x[$key] * $val;
		}

		foreach ($this->x as $key => $val) {
			$this->x_kuadrat[$key] = $val * $val;
		}

		$this->z1 = array_sum($this->y);
		$this->z2 = array_sum($this->xy);
		$this->a1 = count($this->y);
		$this->a2 = array_sum($this->x);
		$this->b1 = array_sum($this->x);
		$this->b2 = array_sum($this->x_kuadrat);

		$this->b = ($this->a2 * $this->z1 - $this->a1 * $this->z2) / ($this->a2 * $this->b1 - $this->a1 * $this->b2);
		$this->a = ($this->b2 * $this->z1 - $this->b1 * $this->z2) / ($this->b2 * $this->a1 - $this->b1 * $this->a2);

		$rata = array_sum($this->y) / count($this->y);
		foreach ($this->x as $key => $val) {
			$this->fx[$key] = $this->a + $this->b * $val;
			$this->indeks_musim[$key] = $this->rata[$key % 12] / $rata;
			$this->y_star[$key] = $this->indeks_musim[$key] * $this->fx[$key];
			$this->err[$key] = $this->y_star[$key] - $this->y[$key];
			$this->err_abs[$key] = abs($this->err[$key]);
			$this->err_square[$key] = pow($this->err[$key], 2);
			$this->err_yt[$key] = $this->err_abs[$key] / $this->y[$key];
		}

		$pembagi = count($this->err);
		$this->errs = array(
			'MSE' => array_sum($this->err_square) / $pembagi,
			'RMSE' => sqrt(array_sum($this->err_square) / $pembagi),
			'MAD' => array_sum($this->err_abs) / $pembagi,
			'MAPE' => array_sum($this->err_yt) / $pembagi,
		);

		$this->max_periode = max(array_keys($this->y));
		$x = max($this->x);

		$this->next_x = array();
		$this->next_fx = array();

		for ($a = $this->max_periode + 1; $a <= $this->max_periode + $this->n_periode; $a++) {
			$x++;
			$this->next_x[$a] = $x;
			$this->next_fx[$a] = $this->a + $this->b * $x;
		}
	}
}
