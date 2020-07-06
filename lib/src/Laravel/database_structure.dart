/// defult AUTO Increment database structher
///Schema::create('${dbname.toLowerCase()}', function (Blueprint \$table) {
///           $table->id();
///           here is your databse strucher
///            $table->timestamps();
///        });
String dbStructure(String dbname, String databaseStructure) {
  String db = """<?php

use Illuminate\\Database\\Migrations\\Migration;
use Illuminate\\Database\\Schema\\Blueprint;
use Illuminate\\Support\\Facades\\Schema;

class ${dbname.firstCapitalize()} extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
    Schema::create('${dbname.toLowerCase()}', function (Blueprint \$table) {
    \$table->id();
       $databaseStructure
    \$table->timestamps();
    });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
          Schema::drop('${dbname.toLowerCase()}');
    }
}
""";
  return db;
}

extension StringExtensions on String {
  String firstCapitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}
