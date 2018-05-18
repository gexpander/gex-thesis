<?php

array_shift($argv);

if (count($argv)==0) die("no file\n");

foreach($argv as $value) {
  if(!file_exists($value)) die("no file ".$value."\n");
}


foreach($argv as $value) {  
  echo "Cleaning $value\n";
  
  $content = file_get_contents($value);
    
  $pat = '/(\\\\(?:label|cref|Cref|ref))\\{([^}]+)\\}/';
  $fixed = preg_replace_callback($pat, function($match) {
    return $match[1] . '{' . trim(str_replace('-', '_', $match[2])) . '}';
  }, $content);
  
  file_put_contents($value, $fixed);
}
echo "OK.\n";
