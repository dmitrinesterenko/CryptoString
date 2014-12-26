import Foundation
// MARK
extension String
{
    /**
    
    Base64 encode a string
    //implemented http://iosdevelopertips.com/swift-code/base64-encode-decode-swift.html

    */
    func base64Encode() -> String{
        let utf8str: NSData = self.dataUsingEncoding(NSUTF8StringEncoding)!
        let base64Encoded:NSString = utf8str.base64EncodedStringWithOptions(NSDataBase64EncodingOptions(0))
         return base64Encoded

    }
    
    /**
    
    Generate an HMAC384 from the string with a secret key and return a hexadecimal string representation
    
    //  Ripped off by Dmitri Nesterenko on 12/7/14 from http://stackoverflow.com/questions/24099520/commonhmac-in-swift and  http://stackoverflow.com/questions/1305225/best-way-to-serialize-a-nsdata-into-an-hexadeximal-string
    */
    func hmac384(key:String)-> String{
        var hmac384 = HMAC()
        var hmac384Value = hmac384.calculate(key, andData:self)
        return ConvertNSDataToHexadecimal.convertToHexadecimal(hmac384Value)
    }
    
    // TODO make a generic HMAC that accepts the strength of algo as an input parameter
}