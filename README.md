# vitezAnita || UNFINISHED AF
land of war


# mysql to mssql (i have not visited any of the sites yet)

1.    [SQLines Online Converter](https://sqlines.com/online)  
  - Free online tool to convert SQL scripts between different databases, including MySQL to SQL Server.

2.    [Online SQL Translator (ConvertSQL)](https://www.convert-sql.com/)  
  - Converts SQL code between MySQL, SQL Server, Oracle, PostgreSQL, and more.

3.    [RebaseData SQL Converter](https://www.rebasedata.com/convert-mysql-to-sqlserver-online)  
  - Convert MySQL dump files to SQL Server format.

4.    [DBConvert Online](https://dbconvert.com/convert-mysql-to-sql-server-online/)  
  - Convert databases and scripts from MySQL to SQL Server directly.

5.    [SQL Server Migration Assistant for MySQL (SSMA)](https://learn.microsoft.com/en-us/sql/ssma/mysql/ssma-for-mysql?view=sql-server-ver16)  
  - Official Microsoft tool for migrating MySQL databases to SQL Server. It’s a program you download, not online, but highly recommended for complex migrations.

Let me know if you need help using any of these tools!




Angular jaw(mewing guide)

Mini Angular Projekt Dokumentáció
Ez a dokumentáció lépésről lépésre bemutatja, hogyan készült el a mini Angular projekt, amely egy egyszerű weboldal Norvégiáról szóló információk megjelenítésére. A projekt AngularJS-t használ, és tartalmaz egy JSON adatforrást, egy HTML sablont, egy CSS fájlt a stílusokhoz, valamint egy JavaScript fájlt az alkalmazás logikájához.

Projekt Felépítése
A projekt mappastruktúrája a következő:

Mini Angular Projekt Dokumentáció
Ez a dokumentáció lépésről lépésre bemutatja, hogyan készült el a mini Angular projekt, amely egy egyszerű weboldal Norvégiáról szóló információk megjelenítésére. A projekt AngularJS-t használ, és tartalmaz egy JSON adatforrást, egy HTML sablont, egy CSS fájlt a stílusokhoz, valamint egy JavaScript fájlt az alkalmazás logikájához.

Projekt Felépítése
A projekt mappastruktúrája a következő:
Mini Angular Projekt Dokumentáció
Ez a dokumentáció lépésről lépésre bemutatja, hogyan készült el a mini Angular projekt, amely egy egyszerű weboldal Norvégiáról szóló információk megjelenítésére. A projekt AngularJS-t használ, és tartalmaz egy JSON adatforrást, egy HTML sablont, egy CSS fájlt a stílusokhoz, valamint egy JavaScript fájlt az alkalmazás logikájához.

Projekt Felépítése
A projekt mappastruktúrája a következő:
index.html
style.css
script.js
norway.json
img/
    nature.png
    society.png
    economy.jpg
    oilfund.jpg
    work.jpg
    energy.jpg
    vikings.jpg


  Lépések a Projekt Elkészítéséhez
1. HTML Sablon Elkészítése
Az index.html fájl tartalmazza az alkalmazás alapvető felépítését. Ez a fájl:

Betölti az AngularJS keretrendszert.
Meghatározza az alkalmazás nevét (myApp) és a vezérlőt (myCtrl).
Egy keresőmezőt és kártyákat jelenít meg, amelyek a JSON adatokat dinamikusan töltik be.
Kód:

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
    <title>Norway Cards</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <link rel="stylesheet" href="style.css">
</head>
<body ng-app="myApp" ng-controller="myCtrl">

    <div class="container text-center my-4">
        <h1>Norvégia</h1>
    </div>

    <input type="text" class="form-control mb-4" ng-model="searchText" placeholder="Keresés...">

    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-12 mb-4" ng-repeat="x in norway | filter:searchText">
                <div class="card" style="width: 100%;">
                    <img src="img/{{x.img}}" class="card-img-top" alt="{{x.title}}">
                    <div class="card-body">
                        <h5 class="card-title">{{x.title}}</h5>
                        <p class="card-text">{{x.body}}</p>
                        <p class="card-text" id="datetime"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>


2. Adatok Tárolása JSON Formátumban
A norway.json fájl tartalmazza az adatokat, amelyeket az alkalmazás betölt és megjelenít. Minden elem egy objektum, amely tartalmazza a címét (title), leírását (body), és a hozzá tartozó kép nevét (img).

Kód:
[
    {
        "title": "Természeti környezet",
        "body": "Természeti környezete gazdag és változatos...",
        "img": "nature.png"
    },
    {
        "title": "Társadalom és életmód",
        "body": "A lakosság csaknem 100%-a rendelkezik nagysebességű internet kapcsolattal...",
        "img": "society.png"
    }
    // További elemek...
]



3. AngularJS Alkalmazás Létrehozása
A script.js fájl tartalmazza az AngularJS alkalmazás logikáját. A lépések:

Létrehoztunk egy AngularJS modult (myApp).
Egy vezérlőt (myCtrl) definiáltunk, amely betölti a JSON adatokat az $http szolgáltatással.
A betöltött adatokat az $scope.norway változóhoz rendeltük, amelyet az ng-repeat direktíva használ a HTML-ben.
Kód:

var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
    $http.get("norway.json")
    .then(function(response) {
        $scope.norway = response.data;
    }, function(response) {
        console.error("Error loading JSON:", response);
        $scope.norway = [];
    });
});

var now = new Date();
var datetime = now.toLocaleString();

document.getElementById("datetime").innerHTML = datetime;
document.getElementById("datetime").style.color = "gray";


4. Stílusok Hozzáadása
A style.css fájl tartalmazza a kártyák stílusát. A Bootstrap könyvtárat is használjuk az alapvető elrendezéshez.

Kód:
.card {
    background-color: #f8f9faf1;
    border-radius: 0.5rem;
    box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
    padding: 1rem;
}

5. Képek Hozzáadása
Az img mappában tároljuk a képeket, amelyek a JSON fájlban meg vannak adva. Ezeket az AngularJS dinamikusan tölti be az img HTML elem src attribútumába.


# FONTOS:
## script az indexben
## boostrap src az indexben
## angular src az indexben
## kepek helyenek pontos megadasa img/

puszi
