//
//  NeboController.h
//  Nebo
//
//  Created by Matt Mower on 19/12/2008.
//  Copyright 2008 LucidMac Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NeboController : NSObject {
  NSDictionary  *noteMappings;
  NSDictionary  *controlMappings;
}

@property (readonly) NSDictionary *noteMappings;
@property (readonly) NSDictionary *controlMappings;

@end
