String dbController(String dbname, String data) {
  String text = """<?php

namespace App\\Http\\Controllers\\Api;

use App\\ChatRoom;
use App\\Http\\Controllers\\Controller;
use App\\User;
use Illuminate\\Support\\Facades\\Validator;
use Illuminate\\Http\\Request;

class ${dbname[0].toUpperCase()}${dbname.substring(1)}Controller extends Controller
{
   $data
}
""";
  return text;
}
