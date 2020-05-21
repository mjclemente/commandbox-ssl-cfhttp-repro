<cfscript>
  websites = [ "https://trycf.com", "https://google.com", "https://geocoder.ca", "http://geocoder.ca", "https://jsonplaceholder.typicode.com" ];

  for( website in websites ){
    cfhttp( url=website );
    writeDump( var='#cfhttp.errordetail.len() ? cfhttp : website & ' ' & cfhttp.statuscode#', label="#website# #!cfhttp.errordetail.len() ? 'Success!' : ''#" );
    writeOutput( '<hr>' );
  }
  
</cfscript>