<?php
require_once('wp-load.php');
activate_plugin('simple-ldap-login/simple-ldap-login.php');
update_option('simple_ldap_login_settings', array(
    'enabled' => true,
    'host' => 'ldap.patitohosting.licic',
    'port' => 389,
    'basedn' => 'dc=patitohosting,dc=licic',
    'binddn' => 'cn=admin,dc=patitohosting,dc=licic',
    'bindpw' => 'Bl4ck-Kn1fe',
    'filter' => '(&(objectClass=person)(uid={username}))',
    'search_filter' => '',
    'uid_attribute' => 'uid',
    'mail_attribute' => 'mail',
    'name_attribute' => 'displayName',
    'version' => 3,
    'ssl' => false,
    'tls' => false,
    'user_role' => 'subscriber',
    'search_enabled' => true,
    'direct_bind' => false,
    'authorization' => true,
    'group_dn' => 'cn=licic,ou=groups,dc=patitohosting,dc=licic',
    'group_attribute' => 'memberUid',
    'group_operator' => 'AND'
));
      
echo "LDAP configuration applied successfully!\n";
?>
