<cfscript>
  cfhttp( url="https://geocoder.ca" );
  writeDump( var='#cfhttp#' );
  cfhttp( url="https://trycf.com" );
  writeDump( var='#cfhttp#' );
  cfhttp( url="https://jsonplaceholder.typicode.com/todos/1" );
  writeDump( var='#cfhttp#' );
  cfhttp( url="https://google.com" );
  writeDump( var='#cfhttp#' );
</cfscript>