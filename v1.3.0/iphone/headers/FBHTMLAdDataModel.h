// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBHTMLADDATAMODEL_H
#define FBHTMLADDATAMODEL_H


#import <Foundation/Foundation.h>

@class FBAdDataModel;

@interface FBHTMLAdDataModel : FBAdDataModel

@property (readonly, copy, nonatomic) NSString *markup; // ivar: _markup
@property (readonly, copy, nonatomic) NSString *activationCommand; // ivar: _activationCommand
@property (readonly, nonatomic) NSInteger orientation; // ivar: _orientation
@property (readonly, nonatomic) NSNumber *isTablet; // ivar: _isTablet
@property (readonly, nonatomic) NSNumber *isVideo; // ivar: _isVideo
@property (readonly, nonatomic) NSNumber *adHeight; // ivar: _adHeight
@property (readonly, nonatomic) NSNumber *adWidth; // ivar: _adWidth
@property (readonly, nonatomic, getter=isValid) BOOL valid;


-(id)initWithMetadata:(id)arg0 ;
+(void)initialize;


@end


#endif