// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDADVIEWCACHE_H
#define GADOMIDADVIEWCACHE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADOMIDViewKey;
@class GADOMIDAdSessionRegistry;

@interface GADOMIDAdViewCache : NSObject {
    NSMutableDictionary *_adViews;
    NSMutableDictionary *_friendlyObstructions;
    GADOMIDViewKey *_key;
    BOOL _isAdViewProcessed;
    NSMutableSet *_rootViews;
    NSMutableSet *_visibleSessionIds;
    NSMutableSet *_hiddenSessionIds;
}


@property (readonly, nonatomic) GADOMIDAdSessionRegistry *adSessionRegistry; // ivar: _adSessionRegistry
@property (readonly, nonatomic) NSDictionary *adViews;
@property (readonly, nonatomic) NSDictionary *friendlyObstructions;
@property (readonly, nonatomic) NSSet *rootViews;
@property (readonly, nonatomic) NSSet *visibleSessionIds;
@property (readonly, nonatomic) NSSet *hiddenSessionIds;


-(id)initWithAdSessionRegistry:(id)arg0 ;
-(void)prepare;
-(BOOL)buildRootViewsFromAdView:(id)arg0 ;
-(void)prepareFriendlyObstructionsForAdSession:(id)arg0 ;
-(void)addFriendlyObstruction:(id)arg0 forAdSession:(id)arg1 ;
-(void)cleanup;
-(void)onAdViewProcessed;
-(id)sessionIdForView:(id)arg0 ;
-(id)friendlySessionIdsForView:(id)arg0 ;
-(NSUInteger)typeForView:(id)arg0 ;


@end


#endif