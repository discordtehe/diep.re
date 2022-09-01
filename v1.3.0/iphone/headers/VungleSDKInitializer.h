// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLESDKINITIALIZER_H
#define VUNGLESDKINITIALIZER_H


#import <Foundation/Foundation.h>

@class VungleBackoffCalculator;
@class VungleNewRequestController;
@class VungleConfigController;
@class VungleReportAdController;
@class VunglePlayabilityCoordinator;
@class VunglePlacementsCoordinator;
@class VunglePublisherInformationProvider;
@protocol VungleSDKInitializerDelegate;

@interface VungleSDKInitializer : NSObject

@property (copy, nonatomic) VungleBackoffCalculator *backoffCalculator; // ivar: _backoffCalculator
@property (retain, nonatomic) NSOperationQueue *queue; // ivar: _queue
@property (copy, nonatomic) NSString *advertisingIdentifier; // ivar: _advertisingIdentifier
@property (nonatomic, getter=isInitializing, setter=isInitializing:) BOOL initializing; // ivar: _initializing
@property (nonatomic, getter=isInitializingFromBackground, setter=isInitializingFromBackground:) BOOL initializingFromBackground; // ivar: _initializingFromBackground
@property (nonatomic) BOOL didInitialize; // ivar: _didInitialize
@property (nonatomic) NSUInteger retryIndex; // ivar: _retryIndex
@property (retain, nonatomic) NSString *userAgent; // ivar: _userAgent
@property (weak, nonatomic) VungleNewRequestController *requestNewController; // ivar: _requestNewController
@property (weak, nonatomic) VungleConfigController *configController; // ivar: _configController
@property (weak, nonatomic) VungleReportAdController *reportAdController; // ivar: _reportAdController
@property (weak, nonatomic) VunglePlayabilityCoordinator *playabilityCoordinator; // ivar: _playabilityCoordinator
@property (weak, nonatomic) VunglePlacementsCoordinator *placementsCoordinator; // ivar: _placementsCoordinator
@property (copy, nonatomic) VunglePublisherInformationProvider *publisherInformation; // ivar: _publisherInformation
@property (weak, nonatomic) NSObject<VungleSDKInitializerDelegate> *delegate; // ivar: _delegate


-(id)initWithNewRequestController:(id)arg0 configController:(id)arg1 reportAdController:(id)arg2 placementsCoordinator:(id)arg3 playabilityCoordinator:(id)arg4 ;
-(void)initializeWithCompletionBlock:(id)arg0 ;
-(void)initializeFromBackgroundWithCompletionBlock:(id)arg0 ;
-(void)abortInitializationWithError:(id)arg0 completionBlock:(id)arg1 ;
-(void)retryInitializationWithCompletionBlock:(id)arg0 ;
-(void)cleanupAdUnits;
-(void)isInitializing:(BOOL)arg0 ;
-(void)isInitializingFromBackground:(BOOL)arg0 ;


@end


#endif