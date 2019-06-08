function Main()

   local aCategory

   ? "<h1>Blog categories</h1>"

   for each aCategory in Categories()
      ? "<h2>" + aCategory[ 1 ] + "</h2>"
   next

return nil

function Categories()

   local cPathLinux := "/var/www/html/"
   local aCategories, nAt

   if File( cPathLinux + "index.html" )
      aCategories = Directory( cPathLinux + "modharbour_examples/blog/", "D" )
   else
      aCategories = Directory( "c:/Apache24/htdocs/modharbour_samples/blog/*.*", "D" )
   endif

   while ( nAt := AScan( aCategories, { | aCategory | aCategory[ 1 ] $ ".,..,layouts,images" } ) ) != 0
      ADel( aCategories, nAt )
      ASize( aCategories, Len( aCategories ) - 1 )
   end 

return aCategories 
