//
//  ViewController.m
//  Zip
//
//  Created by 荣耀iMac on 16/12/9.
//  Copyright © 2016年 wleleven. All rights reserved.
//

#import "ViewController.h"
#import "SSZipArchive.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self zip];
    
//    [self unzip];
}

-(void)unzip
{
//    [SSZipArchive unzipFileAtPath:@"/Users/Glory_iMac/Desktop/MKCustomCamera-master.zip" toDestination:@"/Users/Glory_iMac/Desktop/memeda"];
    
     [SSZipArchive unzipFileAtPath:@"/Users/Glory_iMac/Desktop/MKCustomCamera-master.zip" toDestination:@"/Users/Glory_iMac/Desktop/11222333444" progressHandler:^(NSString * _Nonnull entry, unz_file_info zipInfo, long entryNumber, long total) {
          NSLog(@"%zd---%zd",entryNumber,total);
     } completionHandler:^(NSString * _Nonnull path, BOOL succeeded, NSError * _Nonnull error) {
           NSLog(@"%@",path);
     }];
}

-(void)zip
{
    ///Users/Glory_iMac/Desktop/1.png
    ///Users/Glory_iMac/Desktop/2.png
    NSArray *arrayM = @[
                        @"Users/Glory_iMac/Desktop/1.png",
                        @"Users/Glory_iMac/Desktop/2.png"
                        ];

//    [SSZipArchive createZipFileAtPath:@"/Users/Glory_iMac/Desktop/Test2.zip" withFilesAtPaths:arrayM];
//    [SSZipArchive createZipFileAtPath:@"/Users/Glory_iMac/Desktop/Test.zip" withFilesAtPaths:arrayM withPassword:@"7417417474741"];//
//    [SSZipArchive createZipFileAtPath:@"/Users/Glory_iMac/Desktop/YYTest1.zip" withContentsOfDirectory:@"/Users/Glory_iMac/Desktop/YYTest"];
    
    [SSZipArchive createZipFileAtPath:@"/Users/Glory_iMac/Desktop/多线程.zip" withContentsOfDirectory:@"/Users/Glory_iMac/Desktop/多线程" withPassword:@"7417417474741"];
    
   
}

@end
