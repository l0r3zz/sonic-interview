<?php
$api_url = "https://json-placeholder.mock.beeceptor.com/users";
$curl = curl_init($api_url);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true); // Return the response
// Add custom headers if needed:
//curl_setopt($curl, CURLOPT_HTTPHEADER, array("Authorization: Bearer YOUR_TOKEN"));

$response = curl_exec($curl);
curl_close($curl);
echo $response; // Output the raw response
?>
