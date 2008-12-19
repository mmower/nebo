//
//  NeboController.m
//  Nebo
//
//  Created by Matt Mower on 19/12/2008.
//  Copyright 2008 LucidMac Software. All rights reserved.
//

#import "NeboController.h"

@implementation NeboController

- (id)init {
  if( ( self = [super init] ) ) {
    noteMappings    = [NSMutableDictionary dictionary];
    controlMappings = [NSMutableDictionary dictionary];
  }
  
  return self;
}

@synthesize noteMappings;
@synthesize controlMappings;

@end
