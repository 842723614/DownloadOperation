//
//  ViewController.m
//  DownloadOperation
//
//  Created by mac on 16/7/6.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "ViewController.h"
#import "DownloadOperation.h"

@interface ViewController ()


@property (strong , nonatomic) NSOperationQueue *queue;

@property (weak, nonatomic) IBOutlet UIImageView *IconImage;

@end

@implementation ViewController
//懒加载
-(NSOperationQueue *)queue{
    if (_queue == nil) {
        _queue = [[NSOperationQueue alloc]init];
    }
    return _queue;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *urlstr = @"http://h.hiphotos.baidu.com/image/pic/item/dc54564e9258d109a4d1165ad558ccbf6c814d23.jpg";

    DownloadOperation *op = [DownloadOperation downloadImgWithUrlstrdownloadImgWithUrlstr:urlstr MyBolck:^(UIImage *image) {
        self.IconImage.image = image;
    }];

    
    [self.queue addOperation:op];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
