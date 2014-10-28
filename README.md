####ServerDensity Docker 
Image build for M12 Cloud Deployment 

Image supports environmental variable 

  > API_KEY your_api_key
  
  > GROUPNAME Server/Node groupname
  
  > ACCOUNT_NAME  Name of your organization (https://****.serverdensity.io)
  
If no GROUPNAME provided it will add node to default directory. Remember to add hostname as otherwise system will use dockerid. 

Start Docker image

  > docker run -d \
  
  > -t 
  
  > -h hostname
  
  > --name serverdensity \
  
  > -e API_KEY=key \
  
  > -e GROUPNAME=groupname \
  
  > -e ACCOUNT_NAME=name \
  
  > million12/serverdensity