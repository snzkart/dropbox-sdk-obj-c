///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBSerializableProtocol.h"
#import "DBTEAMMemberProfile.h"

@class DBTEAMTeamMemberProfile;
@class DBTEAMTeamMemberStatus;
@class DBTEAMTeamMembershipType;
@class DBUSERSName;

#pragma mark - API Object

/// 
/// The TeamMemberProfile struct.
/// 
/// Profile of a user as a member of a team.
/// 
/// This class implements the DBSerializable protocol (serialize and deserialize
/// instance methods), which is required for all Obj-C SDK API route objects.
/// 
@interface DBTEAMTeamMemberProfile : DBTEAMMemberProfile <DBSerializable> 

#pragma mark - Instance fields

/// List of group IDs of groups that the user belongs to.
@property (nonatomic, readonly) NSArray<NSString *> * _Nonnull groups;

#pragma mark - Constructors

/// 
/// Full constructor for the DBTEAMTeamMemberProfile struct (exposes all
/// instance variables).
/// 
/// @param teamMemberId ID of user as a member of a team.
/// @param email Email address of user.
/// @param emailVerified Is true if the user's email is verified to be owned by
/// the user.
/// @param status The user's status as a member of a specific team.
/// @param name Representations for a person's name.
/// @param membershipType The user's membership type: full (normal team member)
/// vs limited (does not use a license; no access to the team's shared quota).
/// @param groups List of group IDs of groups that the user belongs to.
/// @param externalId External ID that a team can attach to the user. An
/// application using the API may find it easier to use their own IDs instead of
/// Dropbox IDs like account_id or team_member_id.
/// @param accountId A user's account identifier.
/// 
/// @return An initialized DBTEAMTeamMemberProfile instance.
/// 
- (nonnull instancetype)initWithTeamMemberId:(NSString * _Nonnull)teamMemberId email:(NSString * _Nonnull)email emailVerified:(NSNumber * _Nonnull)emailVerified status:(DBTEAMTeamMemberStatus * _Nonnull)status name:(DBUSERSName * _Nonnull)name membershipType:(DBTEAMTeamMembershipType * _Nonnull)membershipType groups:(NSArray<NSString *> * _Nonnull)groups externalId:(NSString * _Nullable)externalId accountId:(NSString * _Nullable)accountId;

/// 
/// Convenience constructor for the DBTEAMTeamMemberProfile struct (exposes only
/// non-nullable instance variables with no default value).
/// 
/// @param teamMemberId ID of user as a member of a team.
/// @param email Email address of user.
/// @param emailVerified Is true if the user's email is verified to be owned by
/// the user.
/// @param status The user's status as a member of a specific team.
/// @param name Representations for a person's name.
/// @param membershipType The user's membership type: full (normal team member)
/// vs limited (does not use a license; no access to the team's shared quota).
/// @param groups List of group IDs of groups that the user belongs to.
/// 
/// @return An initialized DBTEAMTeamMemberProfile instance.
/// 
- (nonnull instancetype)initWithTeamMemberId:(NSString * _Nonnull)teamMemberId email:(NSString * _Nonnull)email emailVerified:(NSNumber * _Nonnull)emailVerified status:(DBTEAMTeamMemberStatus * _Nonnull)status name:(DBUSERSName * _Nonnull)name membershipType:(DBTEAMTeamMembershipType * _Nonnull)membershipType groups:(NSArray<NSString *> * _Nonnull)groups;

@end


#pragma mark - Serializer Object

/// 
/// The serialization class for the TeamMemberProfile struct.
/// 
@interface DBTEAMTeamMemberProfileSerializer : NSObject 

/// 
/// Serializes DBTEAMTeamMemberProfile instances.
/// 
/// @param instance An instance of the DBTEAMTeamMemberProfile API object.
/// 
/// @return A json-compatible dictionary representation of the
/// DBTEAMTeamMemberProfile API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBTEAMTeamMemberProfile * _Nonnull)instance;

/// 
/// Deserializes DBTEAMTeamMemberProfile instances.
/// 
/// @param dict A json-compatible dictionary representation of the
/// DBTEAMTeamMemberProfile API object.
/// 
/// @return An instantiation of the DBTEAMTeamMemberProfile object.
/// 
+ (DBTEAMTeamMemberProfile * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
