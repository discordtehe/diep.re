// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDLOGFILEFORMATTERDEFAULT_H
#define TR_DDLOGFILEFORMATTERDEFAULT_H


#import <Foundation/Foundation.h>

@protocol DDLogFormatter;

@interface TR_DDLogFileFormatterDefault : NSObject <DDLogFormatter>

 {
    NSDateFormatter *_dateFormatter;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithDateFormatter:(id)arg0 ;
-(id)formatLogMessage:(id)arg0 ;


@end


#endif