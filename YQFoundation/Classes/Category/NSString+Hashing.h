

#import <Foundation/Foundation.h>


@interface NSString (NSString_Hashing)

+ (NSString*)fileMD5:(NSString*)path;
+ (NSString*)dataMD5:(NSData*)data;
- (NSString *)getSHA512String:(NSString *)srcString;

@end
