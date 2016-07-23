//
//  DownloadOperation.h
//  DownloadOperation
//
//  Created by mac on 16/7/6.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DownloadOperation : NSOperation

@property (strong , nonatomic)NSString *urlstr;

@property (strong , nonatomic) void(^MyBlock)(UIImage *image);

+(instancetype)downloadImgWithUrlstrdownloadImgWithUrlstr:(NSString *)urlstr MyBolck:(void(^)(UIImage *image))MyBlock;

@end
