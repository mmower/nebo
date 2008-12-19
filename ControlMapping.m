//
//  ControlMapping.m
//  Nebo
//
//  Created by Matt Mower on 19/12/2008.
//  Copyright 2008 LucidMac Software. All rights reserved.
//

#import "ControlMapping.h"

@implementation ControlMapping

- (id)initWithMask:(NSUInteger)_mask_ range:(NSRange)_range_ source:(NSString *)_source_ {
  if( ( self = [self init] ) ) {
    [self setMask:_mask_];
    [self setRange:_range_];
    [self setSource:_source_];
  }
  
  return self;
}

@synthesize mask;
@synthesize range;
@dynamic source;
@synthesize callback;

- (NSString *)source {
  return source;
}

- (void)setSource:(NSString *)_source_ {
  source = _source_;
  [self compile];
}

- (void)compile {
  callback = [[JSCocoaController sharedController] evalJSString:[NSString stringWithFormat:@"function (number,value) {\n%@\n}", source]];
}

@end
