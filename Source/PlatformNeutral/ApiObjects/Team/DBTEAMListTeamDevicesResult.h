///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"

@class DBTEAMListTeamDevicesResult;
@class DBTEAMMemberDevices;

#pragma mark - API Object

/// 
/// The ListTeamDevicesResult struct.
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBTEAMListTeamDevicesResult : NSObject <DBSerializable> 

#pragma mark - Instance fields

/// The devices of each member of the team
@property (nonatomic, readonly) NSArray<DBTEAMMemberDevices *> * _Nonnull devices;

/// If true, then there are more devices available. Pass the cursor to
/// devicesListTeamDevices to retrieve the rest.
@property (nonatomic, readonly, copy) NSNumber * _Nonnull hasMore;

/// Pass the cursor into devicesListTeamDevices to receive the next sub list of
/// team's devices.
@property (nonatomic, readonly, copy) NSString * _Nullable cursor;

#pragma mark - Constructors

/// 
/// Full constructor for the DBTEAMListTeamDevicesResult struct (exposes all
/// instance variables).
/// 
/// @param devices The devices of each member of the team
/// @param hasMore If true, then there are more devices available. Pass the
/// cursor to :route:`devices/list_team_devices` to retrieve the rest.
/// @param cursor Pass the cursor into :route:`devices/list_team_devices` to
/// receive the next sub list of team's devices.
/// 
/// @return An initialized DBTEAMListTeamDevicesResult instance.
/// 
- (nonnull instancetype)initWithDevices:(NSArray<DBTEAMMemberDevices *> * _Nonnull)devices hasMore:(NSNumber * _Nonnull)hasMore cursor:(NSString * _Nullable)cursor;

/// 
/// Convenience constructor for the DBTEAMListTeamDevicesResult struct (exposes
/// only non-nullable instance variables with no default value).
/// 
/// @param devices The devices of each member of the team
/// @param hasMore If true, then there are more devices available. Pass the
/// cursor to :route:`devices/list_team_devices` to retrieve the rest.
/// 
/// @return An initialized DBTEAMListTeamDevicesResult instance.
/// 
- (nonnull instancetype)initWithDevices:(NSArray<DBTEAMMemberDevices *> * _Nonnull)devices hasMore:(NSNumber * _Nonnull)hasMore;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the ListTeamDevicesResult struct.
/// 
@interface DBTEAMListTeamDevicesResultSerializer : NSObject 

/// 
/// Serializes DBTEAMListTeamDevicesResult instances.
/// 
/// @param instance An instance of the DBTEAMListTeamDevicesResult API object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBTEAMListTeamDevicesResult API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBTEAMListTeamDevicesResult * _Nonnull)instance;

/// 
/// Deserializes DBTEAMListTeamDevicesResult instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBTEAMListTeamDevicesResult API object.
/// 
/// @return An instantiation of the DBTEAMListTeamDevicesResult object.
/// 
+ (DBTEAMListTeamDevicesResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
