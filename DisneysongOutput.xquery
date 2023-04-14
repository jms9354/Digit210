<html>
    <head><title>Composers and Songs</title></head>
    <body>
    <h1>Composers and Songs in the Disney Songs Collection</h1>
    
    <table>
        <tr><th>No.</th><th>Composers</th><th>Performers</th><th>List of Songs</th></tr>
    {
    let $disneySongs := collection('/db/disneySongs/')
    let $composers := $disneySongs//composer ! normalize-space() => distinct-values() => sort()
     for $c at $pos in $composers
       let $cTitles := $disneySongs[.//composer ! normalize-space() = $c]//title ! normalize-space() => distinct-values() => sort() => string-join(', ')
    return 
       <tr>
          <td>{$pos}</td><td>{$c}</td><td>{$cTitles}</td> 
               
        </tr> 
   }
   </table>
</body>
</html>