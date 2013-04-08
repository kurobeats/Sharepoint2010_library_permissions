Add-PSSnapin Microsoft.SharePoint.Powershell -EA 0 
$web = get-spweb http://sbx01/sites/example
foreach ($list in $web.Lists) 
{ 
     if($list.browserfilehandling -eq "Strict") 
     { 
          $list.browserfilehandling = "Permissive"; 
          $list.update(); $site.url, $list.title, $list.browserfilehandling
     } 
}
