<cfscript>
  websites = [ "https://geocoder.ca", "http://geocoder.ca", "https://trycf.com", "https://jsonplaceholder.typicode.com", "https://google.com" ];

  for( website in websites ){
    cfhttp( url=website );
    writeDump( var='#cfhttp.errordetail.len() ? cfhttp.errordetail : cfhttp.statuscode#', label="#website# #!cfhttp.errordetail.len() ? 'Success!' : ''#" );
  }
  
</cfscript>