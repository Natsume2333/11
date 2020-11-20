//
//  NSObject+UIApplication.m
//  Runner
//
//  Created by Lj z on 2020/6/1.
//

#import "NSObject+UIApplication.h"

@implementation UIApplication (LaunchScreen)
// 清除启动图缓存
- (void)clearLaunchScreenCache {
    NSError *error;
    [NSFileManager.defaultManager removeItemAtPath:[NSString stringWithFormat:@"%@/Library/SplashBoard" , NSHomeDirectory()] error: &error];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // 启动图片延时: 1秒
    [NSThread sleepForTimeInterval:1];
    return YES;
}
@end

