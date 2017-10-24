<?php

class Foo{

	static $x = "Hello John!\n";
	public $text = "";
	
	public static function getText(){

		echo "Использование метода класса:\n";

		for($i = 0; $i < 5; $i++){
			echo "Hello World!\n";
		}
	}
	
	public static function lookup($text){
		
		return $text;
	}
}

