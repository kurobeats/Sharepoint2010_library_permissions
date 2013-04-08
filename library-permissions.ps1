Add-PSSnapin Microsoft.SharePoint.Powershell -EA 0 
$web = get-spweb http://vm-wlimpocdoc/sites/cdg/cdmrt
foreach ($list in $web.Lists) 
{ 
     if($list.browserfilehandling -eq "Strict") 
     { 
          $list.browserfilehandling = "Permissive"; 
          $list.update(); $site.url, $list.title, $list.browserfilehandling
     } 
}