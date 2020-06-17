String laravelModel(String dbname, List<String> fillable, List<String> hidden) {
  String text = """<?php

namespace App;

use Illuminate\\Database\\Eloquent\\Model;

class ${dbname[0].toUpperCase()}${dbname.substring(1)} extends Model
{
    //
    protected \$table = '$dbname';
    protected \$fillable = $fillable;
    protected \$hidden = $hidden;
}
""";
  return text;
}
