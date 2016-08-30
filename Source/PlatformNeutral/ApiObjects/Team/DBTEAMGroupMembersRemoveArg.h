///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"
#import "DBTEAMIncludeMembersArg.h"

@class DBTEAMGroupMembersRemoveArg;
@class DBTEAMGroupSelector;
@class DBTEAMUserSelectorArg;

#pragma mark - API Object

/// 
/// The GroupMembersRemoveArg struct.
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBTEAMGroupMembersRemoveArg : DBTEAMIncludeMembersArg <DBSerializable> 

#pragma mark - Instance fields

/// Group from which users will be removed.
@property (nonatomic, readonly) DBTEAMGroupSelector * _Nonnull group;

/// List of users to be removed from the group.
@property (nonatomic, readonly) NSArray<DBTEAMUserSelectorArg *> * _Nonnull users;

#pragma mark - Constructors

/// 
/// Full constructor for the DBTEAMGroupMembersRemoveArg struct (exposes all
/// instance variables).
/// 
/// @param group Group from which users will be removed.
/// @param users List of users to be removed from the group.
/// @param returnMembers Whether to return the list of members in the group.
/// Note that the default value will cause all the group members  to be returned
/// in the response. This may take a long time for large groups.
/// 
/// @return An initialized DBTEAMGroupMembersRemoveArg instance.
/// 
- (nonnull instancetype)initWithGroup:(DBTEAMGroupSelector * _Nonnull)group users:(NSArray<DBTEAMUserSelectorArg *> * _Nonnull)users returnMembers:(NSNumber * _Nullable)returnMembers;

/// 
/// Convenience constructor for the DBTEAMGroupMembersRemoveArg struct (exposes
/// only non-nullable instance variables with no default value).
/// 
/// @param group Group from which users will be removed.
/// @param users List of users to be removed from the group.
/// 
/// @return An initialized DBTEAMGroupMembersRemoveArg instance.
/// 
- (nonnull instancetype)initWithGroup:(DBTEAMGroupSelector * _Nonnull)group users:(NSArray<DBTEAMUserSelectorArg *> * _Nonnull)users;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the GroupMembersRemoveArg struct.
/// 
@interface DBTEAMGroupMembersRemoveArgSerializer : NSObject 

/// 
/// Serializes DBTEAMGroupMembersRemoveArg instances.
/// 
/// @param instance An instance of the DBTEAMGroupMembersRemoveArg API object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBTEAMGroupMembersRemoveArg API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBTEAMGroupMembersRemoveArg * _Nonnull)instance;

/// 
/// Deserializes DBTEAMGroupMembersRemoveArg instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBTEAMGroupMembersRemoveArg API object.
/// 
/// @return An instantiation of the DBTEAMGroupMembersRemoveArg object.
/// 
+ (DBTEAMGroupMembersRemoveArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
