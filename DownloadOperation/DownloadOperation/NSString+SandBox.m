//
//  NSString+SandBox.m
//  DownloadOperation
//
//  Created by mac on 16/7/6.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "NSString+SandBox.h"

@implementation NSString (SandBox)

-(instancetype)appdendCache{
    return [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)lastObject]stringByAppendingPathComponent:[self lastPathComponent]];
}

-(instancetype)appdendDocument{

    return [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject]stringByAppendingPathComponent:[self lastPathComponent]];

}

-(instancetype)appdendTemp{
    
    return [NSTemporaryDirectory() stringByAppendingPathComponent:[self lastPathComponent]];
}

@end
