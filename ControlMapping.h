//
//  ControlMapping.h
//  Nebo
//
//  Created by Matt Mower on 19/12/2008.
//  Copyright 2008 LucidMac Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <JSCocoa/JSCocoa.h>

@interface ControlMapping : NSObject {
  NSUInteger mask;
  NSRange range;
  NSString *source;
  JSValueRefAndContextRef callback;
}

- (id)initWithMask:(NSUInteger)mask range:(NSRange)range source:(NSString *)source;

@property NSUInteger mask;
@property NSRange range;
@property (assign) NSString *source;
@property (readonly) JSValueRefAndContextRef callback;

- (void)compile;

@end
