# # This is an auto-generated Django model module.
# # You'll have to do the following manually to clean this up:
# #   * Rearrange models' order
# #   * Make sure each model has one field with primary_key=True
# #   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
# #   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# # Feel free to rename the models, but don't rename db_table values or field names.
# from django.db import models


# class AuthGroup(models.Model):
#     name = models.CharField(unique=True, max_length=150)

#     class Meta:
#         managed = False
#         db_table = 'auth_group'


# class AuthGroupPermissions(models.Model):
#     group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
#     permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

#     class Meta:
#         managed = False
#         db_table = 'auth_group_permissions'
#         unique_together = (('group', 'permission'),)


# class AuthPermission(models.Model):
#     name = models.CharField(max_length=255)
#     content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
#     codename = models.CharField(max_length=100)

#     class Meta:
#         managed = False
#         db_table = 'auth_permission'
#         unique_together = (('content_type', 'codename'),)


# class AuthUser(models.Model):
#     password = models.CharField(max_length=128)
#     last_login = models.DateTimeField(blank=True, null=True)
#     is_superuser = models.IntegerField()
#     username = models.CharField(unique=True, max_length=150)
#     first_name = models.CharField(max_length=30)
#     last_name = models.CharField(max_length=150)
#     email = models.CharField(max_length=254)
#     is_staff = models.IntegerField()
#     is_active = models.IntegerField()
#     date_joined = models.DateTimeField()

#     class Meta:
#         managed = False
#         db_table = 'auth_user'


# class AuthUserGroups(models.Model):
#     user = models.ForeignKey(AuthUser, models.DO_NOTHING)
#     group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

#     class Meta:
#         managed = False
#         db_table = 'auth_user_groups'
#         unique_together = (('user', 'group'),)


# class AuthUserUserPermissions(models.Model):
#     user = models.ForeignKey(AuthUser, models.DO_NOTHING)
#     permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

#     class Meta:
#         managed = False
#         db_table = 'auth_user_user_permissions'
#         unique_together = (('user', 'permission'),)


# class DjangoAdminLog(models.Model):
#     action_time = models.DateTimeField()
#     object_id = models.TextField(blank=True, null=True)
#     object_repr = models.CharField(max_length=200)
#     action_flag = models.PositiveSmallIntegerField()
#     change_message = models.TextField()
#     content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
#     user = models.ForeignKey(AuthUser, models.DO_NOTHING)

#     class Meta:
#         managed = False
#         db_table = 'django_admin_log'


# class DjangoContentType(models.Model):
#     app_label = models.CharField(max_length=100)
#     model = models.CharField(max_length=100)

#     class Meta:
#         managed = False
#         db_table = 'django_content_type'
#         unique_together = (('app_label', 'model'),)


# class DjangoMigrations(models.Model):
#     app = models.CharField(max_length=255)
#     name = models.CharField(max_length=255)
#     applied = models.DateTimeField()

#     class Meta:
#         managed = False
#         db_table = 'django_migrations'


# class DjangoSession(models.Model):
#     session_key = models.CharField(primary_key=True, max_length=40)
#     session_data = models.TextField()
#     expire_date = models.DateTimeField()

#     class Meta:
#         managed = False
#         db_table = 'django_session'


# class Gail(models.Model):
#     org_id = models.AutoField(primary_key=True)
#     head = models.ForeignKey('Users', models.DO_NOTHING, db_column='head')
#     contact_head = models.ForeignKey('Users', models.DO_NOTHING, db_column='contact_head')
#     zone = models.ForeignKey('Zone', models.DO_NOTHING)
#     sub_zone = models.ForeignKey('SubZones', models.DO_NOTHING)
#     contact_details = models.TextField()
#     eth_address = models.CharField(unique=True, max_length=500)

#     class Meta:
#         managed = False
#         db_table = 'gail'


# class Middleman(models.Model):
#     middle_id = models.IntegerField()
#     name = models.IntegerField()
#     address = models.CharField(max_length=100)
#     invited_by = models.ForeignKey('Users', models.DO_NOTHING, db_column='invited_by')
#     other_details = models.TextField()

#     class Meta:
#         managed = False
#         db_table = 'middleman'


# class Roles(models.Model):
#     role_id = models.AutoField(primary_key=True)
#     function = models.CharField(max_length=100)

#     class Meta:
#         managed = False
#         db_table = 'roles'


# class SocialAuthAssociation(models.Model):
#     server_url = models.CharField(max_length=255)
#     handle = models.CharField(max_length=255)
#     secret = models.CharField(max_length=255)
#     issued = models.IntegerField()
#     lifetime = models.IntegerField()
#     assoc_type = models.CharField(max_length=64)

#     class Meta:
#         managed = False
#         db_table = 'social_auth_association'
#         unique_together = (('server_url', 'handle'),)


# class SocialAuthCode(models.Model):
#     email = models.CharField(max_length=254)
#     code = models.CharField(max_length=32)
#     verified = models.IntegerField()
#     timestamp = models.DateTimeField()

#     class Meta:
#         managed = False
#         db_table = 'social_auth_code'
#         unique_together = (('email', 'code'),)


# class SocialAuthNonce(models.Model):
#     server_url = models.CharField(max_length=255)
#     timestamp = models.IntegerField()
#     salt = models.CharField(max_length=65)

#     class Meta:
#         managed = False
#         db_table = 'social_auth_nonce'
#         unique_together = (('server_url', 'timestamp', 'salt'),)


# class SocialAuthPartial(models.Model):
#     token = models.CharField(max_length=32)
#     next_step = models.PositiveSmallIntegerField()
#     backend = models.CharField(max_length=32)
#     data = models.TextField()
#     timestamp = models.DateTimeField()

#     class Meta:
#         managed = False
#         db_table = 'social_auth_partial'


# class SocialAuthUsersocialauth(models.Model):
#     provider = models.CharField(max_length=32)
#     uid = models.CharField(max_length=255)
#     extra_data = models.TextField()
#     user = models.ForeignKey(AuthUser, models.DO_NOTHING)

#     class Meta:
#         managed = False
#         db_table = 'social_auth_usersocialauth'
#         unique_together = (('provider', 'uid'),)


# class SubZones(models.Model):
#     sub_zone_id = models.AutoField(primary_key=True)
#     sub_zone_name = models.IntegerField()

#     class Meta:
#         managed = False
#         db_table = 'sub_zones'


# class Users(models.Model):
#     uid = models.AutoField(primary_key=True)
#     fname = models.CharField(max_length=100)
#     lname = models.CharField(max_length=100)
#     start_date = models.DateTimeField(blank=True, null=True)
#     end_date = models.DateTimeField(blank=True, null=True)
#     email = models.CharField(max_length=50)
#     password = models.TextField()
#     oauth = models.IntegerField()

#     class Meta:
#         managed = False
#         db_table = 'users'


# class Vendor(models.Model):
#     vendor_id = models.AutoField(primary_key=True)
#     vendor_name = models.CharField(unique=True, max_length=100)
#     contact_head = models.ForeignKey(Users, models.DO_NOTHING, db_column='contact_head')
#     number_of_centres = models.IntegerField()
#     centres = models.TextField()
#     verified_status = models.IntegerField()
#     verified_by = models.ForeignKey(Users, models.DO_NOTHING, db_column='verified_by')
#     verified_at = models.DateTimeField(blank=True, null=True)
#     documents = models.TextField()

#     class Meta:
#         managed = False
#         db_table = 'vendor'


# class Zone(models.Model):
#     zone_id = models.AutoField(primary_key=True)
#     zone_name = models.CharField(max_length=50)

#     class Meta:
#         managed = False
#         db_table = 'zone'


# class ZoneSubzoneMapping(models.Model):
#     zone = models.ForeignKey(Zone, models.DO_NOTHING)
#     sub_zone = models.ForeignKey(SubZones, models.DO_NOTHING)
#     location = models.CharField(max_length=50)

#     class Meta:
#         managed = False
#         db_table = 'zone_subzone_mapping'
