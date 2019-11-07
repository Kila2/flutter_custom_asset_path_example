//
//  Demo.m
//  Runner
//
//  Created by kila on 2019/11/6.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>

@implementation FlutterViewController (Custom)
- (instancetype)initWithCoder:(NSCoder *)coder
{
    //这里传入bundle
    NSString *path = [NSString stringWithFormat:@"%@/FlutterAsset.bundle",[[NSBundle mainBundle] bundlePath]];
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    id proj = [[FlutterDartProject alloc] initWithPrecompiledDartBundle:bundle];
    return [self initWithProject:proj nibName:nil bundle:nil];
}
@end
