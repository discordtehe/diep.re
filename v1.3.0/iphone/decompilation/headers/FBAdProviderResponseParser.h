// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADPROVIDERRESPONSEPARSER_H
#define FBADPROVIDERRESPONSEPARSER_H


#import <Foundation/Foundation.h>


@interface FBAdProviderResponseParser : NSObject

@property (copy, nonatomic) id *onParseSuccess; // ivar: _onParseSuccess
@property (copy, nonatomic) id *onParseError; // ivar: _onParseError


-(id)parsePlacementDefinitionFromData:(id)arg0 ;
-(id)parsePlacementObjectFromJsonData:(id)arg0 ;
// -(void)parseResponseFromData:(id)arg0 successHandler:(id)arg1 errorHandler:(unk)arg2  ;


@end


#endif