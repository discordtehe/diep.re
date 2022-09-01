// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOBADGEINFO_H
#define MCPROMOBADGEINFO_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MCPromoBadgeInfo : NSObject

@property (readonly, nonatomic) NSString *text; // ivar: mText
@property (readonly, nonatomic) NSString *image; // ivar: mImage
@property (readonly, nonatomic) NSDictionary *badgeConfiguration; // ivar: mBadgeConfiguration


-(id)init;
-(id)initWithConfiguration:(id)arg0 ;
-(id)initWithImage:(id)arg0 andText:(id)arg1 ;
-(void)dealloc;


@end


#endif