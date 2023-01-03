resource "aws_s3_bucket" "synk-demo-bucket" {  
  bucket_prefix = var.bucket_prefix  
  acl    = "private"   
  website {    
    index_document = "index.html"    
    error_document = "error.html"   
  }
}