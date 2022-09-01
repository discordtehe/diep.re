// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBPLAYABLEADDATAMODEL_H
#define FBPLAYABLEADDATAMODEL_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBPlayableAdDataModel : NSObject

@property (readonly, copy, nonatomic) NSString *playableURI; // ivar: _playableURI
@property (readonly, copy, nonatomic) NSURL *introCardIconURL; // ivar: _introCardIconURL
@property (readonly, copy, nonatomic) NSString *localizedIntroCardPlayText; // ivar: _localizedIntroCardPlayText
@property (readonly, copy, nonatomic) NSString *localizedDelayClickText; // ivar: _localizedDelayClickText
@property (readonly, nonatomic) BOOL isIntroCardEnabled; // ivar: _isIntroCardEnabled
@property (readonly, nonatomic, getter=isValid) BOOL valid;


-(id)initWithData:(id)arg0 ;


@end


#endif