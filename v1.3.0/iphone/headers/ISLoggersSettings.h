// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISLOGGERSSETTINGS_H
#define ISLOGGERSSETTINGS_H


#import <Foundation/Foundation.h>


@interface ISLoggersSettings : NSObject

@property (readonly, nonatomic) NSInteger server; // ivar: _server
@property (readonly, nonatomic) NSInteger publisher; // ivar: _publisher
@property (readonly, nonatomic) NSInteger console; // ivar: _console


-(id)initWithServer:(NSInteger)arg0 publisher:(NSInteger)arg1 console:(NSInteger)arg2 ;
-(BOOL)isEqualToLoggerSettings:(id)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
-(id)description;


@end


#endif