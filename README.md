# Simple-File-Server
This docker container provides a super simple file server that will serve files from a volume via a web server.  There are no options for authentication, so make sure you want anything served here to be public.

This is meant to be used with a shared volume to expose files that are uploaded via some other mechanism.

### Environment Variables:
* PORT: Specify which port the server should listen on

### Volumes
* /files - the directory containing the uploaded files.  The application will only serve files from this directory.