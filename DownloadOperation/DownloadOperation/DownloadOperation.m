//
//  DownloadOperation.m
//  DownloadOperation
//
//  Created by mac on 16/7/6.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "DownloadOperation.h"
#import "NSString+SandBox.h"

@implementation DownloadOperation

+(instancetype)downloadImgWithUrlstrdownloadImgWithUrlstr:(NSString *)urlstr MyBolck:(void (^)(UIImage *))MyBlock{

    DownloadOperation *op = [[DownloadOperation alloc]init];

    op.urlstr = urlstr;
    
    op.MyBlock = MyBlock;
    
    return op;
}

-(void)main{
    //断言
    NSAssert(self.MyBlock != nil, @"self.MyBlcok为空");
    
    NSURL *urlstr = [NSURL URLWithString:self.urlstr];
    
    //模拟耗时
    [NSThread sleepForTimeInterval:2.0];
    NSData *data = [NSData dataWithContentsOfURL:urlstr];
    
    UIImage *image = [UIImage imageWithData:data];

    //沙盒缓存
    if (image) {
        //写入到缓存
        [data writeToFile:[self.urlstr appdendCache] atomically:YES];
    }
    
    if (self.isCancelled) {
        return;
    }
    
    
    //block调用
    [[NSOperationQueue mainQueue]addOperationWithBlock:^{
        self.MyBlock(image);
    }];

}


@end
