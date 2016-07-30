<?php

/**
 * text_image.php: 
 
 Requires:
 
 gd.inc.php
 .ttf files in same directory
 
 Accepts the following GET parameters:
 *
 * text: The text to put in the image
 * fontdir: Directory .ttf font file is located. Optional. Defaults to current directory.
 * font: Font to use. Optional. Do not put .ttf extension, but I believe it must be lower-case (i.e. .ttf not .TTF).
 * fontsize: The size of the font to use
 * color: Color for the text in hex format: 000000 to FFFFFF, or "rnd" (without quotes) for a random color
 * bgcolor: Background color. Optional. Defaults to transparent.
 * matte: Matte color for transparency (this is the color of the background the image will be on top of)
 * shadow: Optional. If present, the text will have a shadow of this color. Put "inv" (without quotes) for inverse of color.
 *
 * Examples of usage: 
 *	  <img src='text_image.php?fontsize=30&text=Your%20Games&color=ffffff'>
 *    text_image.php?fontsize=30&text=Your%20Games&color=ffffff&fontdir=themes/unicorn1/&font=charmed&bgcolor=888888&shadow=inv
 
  To Do:
 
 1. No longer need to include gd.inc.php in games.php
 2. Have a settings section in the code for default font and gd.inc.php location (etc.)

 *
 */
require('include/gd.inc.php');

header("Content-type: image/gif");
header ("Last-Modified: " . gmdate("D, d M Y H:i:s",mktime (0,0,0,1,1,2000)) . " GMT");  // Date in the past 
header ("Expires: Mon, 26 Jul 2040 05:00:00 GMT");    // In other words... never expire the image 
header ("Cache-Control: max-age=10000000, s-maxage=1000000, proxy-revalidate, must-revalidate");//Cache-Control header is ESSENTIAL for forcing Netscape to load all images!... and telling the ISP caches to do the same in this case cache for 1 million seconds. 

// Set parameters. Change default values here too.
$text = ($_GET['text']) ? $_GET['text'] : 'Put parameters in url: text, font, fontsize, color, bgcolor, matte';
if($_GET['font']) $font = $_GET['font']; else $font = 'Ogilvie'; // Default font
if($_GET['fontsize']) $fontsize = $_GET['fontsize']; else $fontsize = 11;
$color = ($_GET['color']) ? $_GET['color'] : 'FFFFFF';
$matte = ($_GET['matte']) ? $_GET['matte'] : '000000';
$fontdir = ($_GET['fontdir']) ? $_GET['fontdir'] : '.';
if($_GET['shadow']) $shadow = $_GET['shadow'];

if($color=='rnd') $color = random_hex_color();
if($shadow=='inv') $shadow = inverseHex($color);

// Set the enviroment variable for GD
putenv('GDFONTPATH=' . realpath($fontdir));

$size = imagettfbbox($fontsize, 0, $font, $text);
$width = $size[2] + $size[0] + 8;
$height = abs($size[1]) + abs($size[7]);

$im = imagecreate($width, $height);

if($_GET['bgcolor']) $colorBg = ImageColorAllocateFromHex($im, $_GET['bgcolor']);
else {
	$colorMatte = ImageColorAllocateFromHex($im, $matte); 
	imagecolortransparent($im, $colorMatte);
}

// Add some shadow to the text
if($shadow) {
	$colorShadow = ImageColorAllocateFromHex($im, $shadow);
	if($fontsize < 50) $offset = 1;
	else if($fontsize > 100) $offset = 3;
	else $offset = 2; //In-between
	imagettftext($im, $fontsize, 0, $offset, abs($size[5])+$offset, $colorShadow, $font, $text);
}

// Add the text
$color = ImageColorAllocateFromHex($im, $color);
imagettftext($im, $fontsize, 0, 0, abs($size[5]), $color, $font, $text);

imagegif($im);
imagedestroy($im);

?>