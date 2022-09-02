// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADDATAMODEL_H
#define FBADDATAMODEL_H


#import <Foundation/Foundation.h>


@interface FBAdDataModel : NSObject

@property (readonly, copy, nonatomic) NSString *requestId; // ivar: _requestId
@property (readonly, copy, nonatomic) NSString *inlineClientToken; // ivar: _inlineClientToken
@property (readonly, nonatomic) NSInteger iconType; // ivar: _iconType
@property (readonly, nonatomic, getter=isValid) BOOL valid;


-(id)init;
-(id)initWithMetadata:(id)arg0 ;


@end


#endif