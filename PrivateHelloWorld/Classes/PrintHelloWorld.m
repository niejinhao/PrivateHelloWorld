//
//  PrintHelloWorld.m
//  Pods
//
//  Created by 聂金浩 on 2020/9/27.
//

#import "PrintHelloWorld.h"
#import <AFNetworking/AFNetworking.h>

@implementation PrintHelloWorld

+ (void)printHelloWorld {
    NSLog(@"printHelloWorld");
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];

    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3782685451,3066622536&fm=27&gp=0.jpg"]];

    NSURLSessionDownloadTask *downTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        //打印下载进度
        NSLog(@"%f",1.0 * downloadProgress.completedUnitCount/downloadProgress.totalUnitCount);
    } destination:^NSURL * _Nonnull(NSURL * _Nonnull targetPath, NSURLResponse * _Nonnull response) {

        NSString *filePath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
        NSString *fullPath = [filePath stringByAppendingPathComponent:response.suggestedFilename];

        NSLog(@"%@",fullPath);
        return [NSURL fileURLWithPath:fullPath];

    } completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {

        NSLog(@"%@",filePath);
        NSLog(@"completionHandler----%@",error);

    }];

    [downTask resume];
}
@end
