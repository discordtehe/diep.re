// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USERSTATS_H
#define USERSTATS_H


#import <Foundation/Foundation.h>


@interface UserStats : NSObject

@property (readonly, nonatomic) int games_played; // ivar: _games_played
@property (readonly, nonatomic) int mass_consumed; // ivar: _mass_consumed
@property (readonly, nonatomic) int average_mass; // ivar: _average_mass
@property (readonly, nonatomic) int highest_mass; // ivar: _highest_mass
@property (readonly, nonatomic) int longest_time_alive; // ivar: _longest_time_alive
@property (readonly, nonatomic) int normal_cells_eaten; // ivar: _normal_cells_eaten


-(id)init;
-(void)dealloc;
-(void)onDisconnect;
-(void)resetStats;
+(id)userStats;


@end


#endif