// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRCONTEXTUALLAYOUT_H
#define FRCONTEXTUALLAYOUT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FRContextualContent;
@protocol FRRemoteImageDelegate;

@interface FRContextualLayout : NSObject <FRRemoteImageDelegate>



@property (weak) FRContextualContent *content; // ivar: _content
@property NSInteger callbackCount; // ivar: _callbackCount
@property NSInteger imageCount; // ivar: _imageCount
@property NSInteger orientation; // ivar: _orientation
@property CGSize windowAspectRatio; // ivar: _windowAspectRatio
@property (retain) NSArray *buttons; // ivar: _buttons
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDictionary:(id)arg0 content:(id)arg1 ;
-(void)load;
-(void)didLoadRemoteImageWithURL:(id)arg0 ;
+(id)objectWithDictionary:(id)arg0 content:(id)arg1 ;


@end


#endif