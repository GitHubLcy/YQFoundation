//
//  NSString+Hashing.h
//  YQFoundation
//
//  Created by ssl on 2018/5/29.
//  Copyright © 2018年 ssl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (NSString_Hashing)

+ (NSString*)fileMD5:(NSString*)path;
+ (NSString*)dataMD5:(NSData*)data;
- (NSString *)getSHA512String:(NSString *)srcString;

@end
