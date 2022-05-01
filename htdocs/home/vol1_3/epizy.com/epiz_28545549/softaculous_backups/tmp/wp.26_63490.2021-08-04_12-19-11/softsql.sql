-- Softaculous SQL Dump
-- http://www.softaculous.com
--
-- Host: localhost
-- Generation Time: August 4, 2021, 12:19 pm
-- Server version: 5.6.48
-- PHP Version: 5.4.31

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_28545549_w596`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bpbm_threadsmeta`
--

CREATE TABLE `wp5t_bpbm_threadsmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bpbm_threads_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `thread_id` (`bpbm_threads_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_activity`
--

CREATE TABLE `wp5t_bp_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `component` varchar(75) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(75) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `primary_link` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `date_recorded` datetime NOT NULL,
  `hide_sitewide` tinyint(1) DEFAULT '0',
  `mptt_left` int(11) NOT NULL DEFAULT '0',
  `mptt_right` int(11) NOT NULL DEFAULT '0',
  `is_spam` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_recorded` (`date_recorded`),
  KEY `user_id` (`user_id`),
  KEY `item_id` (`item_id`),
  KEY `secondary_item_id` (`secondary_item_id`),
  KEY `component` (`component`),
  KEY `type` (`type`),
  KEY `mptt_left` (`mptt_left`),
  KEY `mptt_right` (`mptt_right`),
  KEY `hide_sitewide` (`hide_sitewide`),
  KEY `is_spam` (`is_spam`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_bp_activity`
--

INSERT INTO `wp5t_bp_activity` VALUES
(1, 1, 'members', 'last_activity', '', '', '', 0, NULL, '2021-08-04 09:57:04', 0, 0, 0, 0),
(2, 3, 'members', 'last_activity', '', '', '', 0, NULL, '2021-06-18 10:10:48', 0, 0, 0, 0),
(3, 1, 'activity', 'activity_update', '<a href="http://renatogr.cf/members/renato/">Renato</a> je objavio novost', '<a class=''bp-suggestions-mention'' href=''http://renatogr.cf/members/rimke-i-brka-i-krepato/'' rel=''nofollow''>@rimke-i-brka-i-krepato</a> kjhdkjbvsdbksjkckjsbd', 'http://renatogr.cf/members/renato/', 0, 0, '2021-06-18 10:10:50', 0, 0, 0, 0),
(4, 1, 'groups', 'created_group', '<a href="http://renatogr.cf/members/renato/">Renato</a> je stvorio grupu <a href="http://renatogr.cf/grupe/vg5zv-zbgzvg/">Vg5zv zbgzvg</a>', '', 'http://renatogr.cf/members/renato/', 1, 0, '2021-06-18 16:53:15', 0, 0, 0, 0),
(5, 1, 'groups', 'activity_update', '<a href="http://renatogr.cf/members/renato/">Renato</a> je objavio novi komentar u grupu <a href="http://renatogr.cf/grupe/vg5zv-zbgzvg/">Esma Ređepova fan klub</a>', ' 6gz gubg\r\n', 'http://renatogr.cf/members/renato/', 1, 0, '2021-06-18 16:56:01', 0, 0, 0, 0),
(6, 1, 'blogs', 'new_blog_post', '<a href="http://renatogr.cf/members/renato/">Renato</a> wrote a new post, <a href="http://renatogr.cf/?p=172">Nemam ideju sto da objavim</a>', '\n\n <img src="http://renatogr.cf/wp-content/uploads/2021/08/VID_20210613_234602_317.mp4"/>', 'http://renatogr.cf/?p=172', 1, 172, '2021-08-01 14:52:02', 0, 0, 0, 0),
(7, 4, 'members', 'new_member', '<a href="http://renatogr.cf/members/marisleafufondrupovic/">Marislea Fufondrupović</a> je postao registrirani član', '', 'http://renatogr.cf/members/renato/', 0, 0, '2021-08-04 10:08:56', 0, 0, 0, 0),
(8, 5, 'members', 'last_activity', '', '', '', 0, NULL, '2021-08-04 10:17:04', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_activity_meta`
--

CREATE TABLE `wp5t_bp_activity_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `activity_id` (`activity_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_bp_activity_meta`
--

INSERT INTO `wp5t_bp_activity_meta` VALUES
(1, 6, 'post_title', 'Nemam ideju sto da objavim'),
(2, 6, 'post_url', 'http://renatogr.cf/?p=172');

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_friends`
--

CREATE TABLE `wp5t_bp_friends` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `initiator_user_id` bigint(20) NOT NULL,
  `friend_user_id` bigint(20) NOT NULL,
  `is_confirmed` tinyint(1) DEFAULT '0',
  `is_limited` tinyint(1) DEFAULT '0',
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `initiator_user_id` (`initiator_user_id`),
  KEY `friend_user_id` (`friend_user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_bp_friends`
--

INSERT INTO `wp5t_bp_friends` VALUES
(1, 1, 3, 0, 0, '2021-06-18 10:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_groups`
--

CREATE TABLE `wp5t_bp_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'public',
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `enable_forum` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `creator_id` (`creator_id`),
  KEY `status` (`status`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_bp_groups`
--

INSERT INTO `wp5t_bp_groups` VALUES
(1, 1, 'Esma Ređepova fan klub', 'vg5zv-zbgzvg', 'Samo za fanove Esme', 'public', 0, 0, '2021-06-18 16:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_groups_groupmeta`
--

CREATE TABLE `wp5t_bp_groups_groupmeta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_bp_groups_groupmeta`
--

INSERT INTO `wp5t_bp_groups_groupmeta` VALUES
(1, 1, 'total_member_count', '1'),
(2, 1, 'last_activity', '2021-06-18 16:56:01'),
(3, 1, 'invite_status', 'members');

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_groups_members`
--

CREATE TABLE `wp5t_bp_groups_members` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `inviter_id` bigint(20) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_mod` tinyint(1) NOT NULL DEFAULT '0',
  `user_title` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_modified` datetime NOT NULL,
  `comments` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `invite_sent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `is_admin` (`is_admin`),
  KEY `is_mod` (`is_mod`),
  KEY `user_id` (`user_id`),
  KEY `inviter_id` (`inviter_id`),
  KEY `is_confirmed` (`is_confirmed`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_bp_groups_members`
--

INSERT INTO `wp5t_bp_groups_members` VALUES
(1, 1, 1, 0, 1, 0, 'Grupni Admin', '2021-06-18 16:51:05', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_invitations`
--

CREATE TABLE `wp5t_bp_invitations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `inviter_id` bigint(20) NOT NULL,
  `invitee_email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `class` varchar(120) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `type` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'invite',
  `content` longtext COLLATE utf8mb4_unicode_520_ci,
  `date_modified` datetime NOT NULL,
  `invite_sent` tinyint(1) NOT NULL DEFAULT '0',
  `accepted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `inviter_id` (`inviter_id`),
  KEY `invitee_email` (`invitee_email`),
  KEY `class` (`class`),
  KEY `item_id` (`item_id`),
  KEY `secondary_item_id` (`secondary_item_id`),
  KEY `type` (`type`),
  KEY `invite_sent` (`invite_sent`),
  KEY `accepted` (`accepted`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_bp_invitations`
--

INSERT INTO `wp5t_bp_invitations` VALUES
(1, 3, 1, '', 'bp_groups_invitation_manager', 1, 0, 'invite', 'Aj dodju u Esma redepova fan klub', '2021-06-18 16:53:13', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_messages_messages`
--

CREATE TABLE `wp5t_bp_messages_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thread_id` bigint(20) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `subject` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_sent` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_id` (`sender_id`),
  KEY `thread_id` (`thread_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_bp_messages_messages`
--

INSERT INTO `wp5t_bp_messages_messages` VALUES
(1, 1, 0, '', '<!-- BBPM START THREAD -->', '0000-00-00 00:00:00'),
(2, 1, 1, 'Odgovor: ', 'Đes', '2021-06-18 10:09:48'),
(3, 1, 3, 'Odgovor: ', 'Saaa ima', '2021-06-18 10:11:42'),
(4, 1, 1, 'Odgovor: ', 'Ig6iugugiugi', '2021-06-18 10:12:06'),
(5, 1, 3, 'Odgovor: ', 'STA mislila jel Jakov vara Klara anu ili Josipa', '2021-06-18 10:13:03'),
(6, 1, 1, 'Odgovor: ', 'Auuu', '2021-06-18 10:13:41'),
(7, 1, 1, 'Odgovor: ', 'To je dobro pitanje', '2021-06-18 10:13:50'),
(8, 1, 3, 'Odgovor: ', 'Znam', '2021-06-18 10:14:02'),
(9, 1, 1, 'Odgovor: ', 'Da', '2021-06-18 10:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_messages_meta`
--

CREATE TABLE `wp5t_bp_messages_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `message_id` (`message_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_messages_notices`
--

CREATE TABLE `wp5t_bp_messages_notices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_sent` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_messages_recipients`
--

CREATE TABLE `wp5t_bp_messages_recipients` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `thread_id` bigint(20) NOT NULL,
  `unread_count` int(10) NOT NULL DEFAULT '0',
  `sender_only` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `thread_id` (`thread_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `sender_only` (`sender_only`),
  KEY `unread_count` (`unread_count`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_bp_messages_recipients`
--

INSERT INTO `wp5t_bp_messages_recipients` VALUES
(1, 3, 1, 0, 0, 0),
(2, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_notifications`
--

CREATE TABLE `wp5t_bp_notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `component_name` varchar(75) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `component_action` varchar(75) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_notified` datetime NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `secondary_item_id` (`secondary_item_id`),
  KEY `user_id` (`user_id`),
  KEY `is_new` (`is_new`),
  KEY `component_name` (`component_name`),
  KEY `component_action` (`component_action`),
  KEY `useritem` (`user_id`,`is_new`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_bp_notifications`
--

INSERT INTO `wp5t_bp_notifications` VALUES
(1, 3, 1, 1, 'friends', 'friendship_request', '2021-06-18 10:09:36', 1),
(2, 3, 2, 1, 'messages', 'new_message', '2021-06-18 10:09:48', 0),
(3, 3, 3, 1, 'activity', 'new_at_mention', '2021-06-18 10:10:50', 1),
(4, 1, 3, 3, 'messages', 'new_message', '2021-06-18 10:11:42', 0),
(5, 3, 4, 1, 'messages', 'new_message', '2021-06-18 10:12:06', 0),
(6, 1, 5, 3, 'messages', 'new_message', '2021-06-18 10:13:03', 0),
(7, 3, 6, 1, 'messages', 'new_message', '2021-06-18 10:13:41', 0),
(8, 3, 7, 1, 'messages', 'new_message', '2021-06-18 10:13:50', 0),
(9, 1, 8, 3, 'messages', 'new_message', '2021-06-18 10:14:02', 0),
(10, 3, 9, 1, 'messages', 'new_message', '2021-06-18 10:14:10', 0),
(11, 3, 1, 0, 'groups', 'group_invite', '2021-06-18 16:53:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_notifications_meta`
--

CREATE TABLE `wp5t_bp_notifications_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `notification_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `notification_id` (`notification_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_optouts`
--

CREATE TABLE `wp5t_bp_optouts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_address_hash` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `email_type` (`email_type`(250)),
  KEY `date_modified` (`date_modified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_user_blogs`
--

CREATE TABLE `wp5t_bp_user_blogs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `blog_id` (`blog_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_bp_user_blogs`
--

INSERT INTO `wp5t_bp_user_blogs` VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_user_blogs_blogmeta`
--

CREATE TABLE `wp5t_bp_user_blogs_blogmeta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blog_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_bp_user_blogs_blogmeta`
--

INSERT INTO `wp5t_bp_user_blogs_blogmeta` VALUES
(1, 1, 'url', 'http://renatogr.cf'),
(2, 1, 'name', 'Renato'),
(3, 1, 'description', ''),
(4, 1, 'last_activity', '2021-08-01 14:52:02'),
(5, 1, 'close_comments_for_old_posts', '0'),
(6, 1, 'close_comments_days_old', '14'),
(7, 1, 'thread_comments_depth', '5'),
(8, 1, 'comment_moderation', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_xprofile_data`
--

CREATE TABLE `wp5t_bp_xprofile_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_bp_xprofile_data`
--

INSERT INTO `wp5t_bp_xprofile_data` VALUES
(1, 1, 4, 'Marislea Fufondrupović', '2021-08-04 10:03:01'),
(2, 1, 5, 'Marislea Fufondrupovic', '2021-08-04 15:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_xprofile_fields`
--

CREATE TABLE `wp5t_bp_xprofile_fields` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL,
  `type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_default_option` tinyint(1) NOT NULL DEFAULT '0',
  `field_order` bigint(20) NOT NULL DEFAULT '0',
  `option_order` bigint(20) NOT NULL DEFAULT '0',
  `order_by` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `parent_id` (`parent_id`),
  KEY `field_order` (`field_order`),
  KEY `can_delete` (`can_delete`),
  KEY `is_required` (`is_required`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_bp_xprofile_fields`
--

INSERT INTO `wp5t_bp_xprofile_fields` VALUES
(1, 1, 0, 'textbox', 'Name', '', 1, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_xprofile_groups`
--

CREATE TABLE `wp5t_bp_xprofile_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `group_order` bigint(20) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `can_delete` (`can_delete`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_bp_xprofile_groups`
--

INSERT INTO `wp5t_bp_xprofile_groups` VALUES
(1, 'Base', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_bp_xprofile_meta`
--

CREATE TABLE `wp5t_bp_xprofile_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) NOT NULL,
  `object_type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_bp_xprofile_meta`
--

INSERT INTO `wp5t_bp_xprofile_meta` VALUES
(1, 1, 'field', 'allow_custom_visibility', 'disabled'),
(2, 1, 'field', 'signup_position', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_commentmeta`
--

CREATE TABLE `wp5t_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_comments`
--

CREATE TABLE `wp5t_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp5t_comments`
--

INSERT INTO `wp5t_comments` VALUES
(3, 172, 'Marislea Fufondrupovic', 'prljava.roletna@outlook.com', '', '95.168.120.19', '2021-08-04 10:12:46', '2021-08-04 10:12:46', 'Hahahahahahahahaha', 0, '0', 'Mozilla/5.0 (Windows NT 6.2; ARM; Trident/7.0; Touch; rv:11.0; WPDesktop; Lumia 630) like Gecko', 'comment', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_links`
--

CREATE TABLE `wp5t_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_options`
--

CREATE TABLE `wp5t_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp5t_options`
--

INSERT INTO `wp5t_options` VALUES
(1, 'siteurl', 'http://renatogr.cf', 'yes'),
(2, 'home', 'http://renatogr.cf', 'yes'),
(3, 'blogname', 'Renato', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'renato.grubesic08@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%author%/%year%/%monthnum%/%hour%/%day%/%minute%/%second%/%post_id%/%postname%/%category%/', 'yes'),
(29, 'rewrite_rules', 'a:279:{s:46:"um-download/([^/]+)/([^/]+)/([^/]+)/([^/]+)/?$";s:111:"index.php?um_action=download&um_form=$matches[1]&um_field=$matches[2]&um_user=$matches[3]&um_verify=$matches[4]";s:15:"user/([^/]+)/?$";s:40:"index.php?page_id=47&um_user=$matches[1]";s:17:"account/([^/]+)?$";s:39:"index.php?page_id=52&um_tab=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/um-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&um-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/um-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&um-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"um_form/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"um_form/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"um_form/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"um_form/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"um_form/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"um_form/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"um_form/([^/]+)/embed/?$";s:40:"index.php?um_form=$matches[1]&embed=true";s:28:"um_form/([^/]+)/trackback/?$";s:34:"index.php?um_form=$matches[1]&tb=1";s:36:"um_form/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?um_form=$matches[1]&paged=$matches[2]";s:43:"um_form/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?um_form=$matches[1]&cpage=$matches[2]";s:33:"um_form/([^/]+)/um-api(/(.*))?/?$";s:48:"index.php?um_form=$matches[1]&um-api=$matches[3]";s:39:"um_form/[^/]+/([^/]+)/um-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&um-api=$matches[3]";s:50:"um_form/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&um-api=$matches[3]";s:32:"um_form/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?um_form=$matches[1]&page=$matches[2]";s:24:"um_form/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"um_form/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"um_form/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"um_form/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"um_form/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"um_form/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"um_directory/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"um_directory/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"um_directory/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"um_directory/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"um_directory/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"um_directory/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"um_directory/([^/]+)/embed/?$";s:45:"index.php?um_directory=$matches[1]&embed=true";s:33:"um_directory/([^/]+)/trackback/?$";s:39:"index.php?um_directory=$matches[1]&tb=1";s:41:"um_directory/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?um_directory=$matches[1]&paged=$matches[2]";s:48:"um_directory/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?um_directory=$matches[1]&cpage=$matches[2]";s:38:"um_directory/([^/]+)/um-api(/(.*))?/?$";s:53:"index.php?um_directory=$matches[1]&um-api=$matches[3]";s:44:"um_directory/[^/]+/([^/]+)/um-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&um-api=$matches[3]";s:55:"um_directory/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&um-api=$matches[3]";s:37:"um_directory/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?um_directory=$matches[1]&page=$matches[2]";s:29:"um_directory/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"um_directory/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"um_directory/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"um_directory/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"um_directory/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"um_directory/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:44:"bpbm-bulk-report/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"bpbm-bulk-report/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"bpbm-bulk-report/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"bpbm-bulk-report/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"bpbm-bulk-report/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"bpbm-bulk-report/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"bpbm-bulk-report/([^/]+)/embed/?$";s:49:"index.php?bpbm-bulk-report=$matches[1]&embed=true";s:37:"bpbm-bulk-report/([^/]+)/trackback/?$";s:43:"index.php?bpbm-bulk-report=$matches[1]&tb=1";s:45:"bpbm-bulk-report/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?bpbm-bulk-report=$matches[1]&paged=$matches[2]";s:52:"bpbm-bulk-report/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?bpbm-bulk-report=$matches[1]&cpage=$matches[2]";s:42:"bpbm-bulk-report/([^/]+)/um-api(/(.*))?/?$";s:57:"index.php?bpbm-bulk-report=$matches[1]&um-api=$matches[3]";s:48:"bpbm-bulk-report/[^/]+/([^/]+)/um-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&um-api=$matches[3]";s:59:"bpbm-bulk-report/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&um-api=$matches[3]";s:41:"bpbm-bulk-report/([^/]+)(?:/([0-9]+))?/?$";s:55:"index.php?bpbm-bulk-report=$matches[1]&page=$matches[2]";s:33:"bpbm-bulk-report/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"bpbm-bulk-report/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"bpbm-bulk-report/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"bpbm-bulk-report/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"bpbm-bulk-report/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"bpbm-bulk-report/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:17:"um-api(/(.*))?/?$";s:29:"index.php?&um-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/um-api(/(.*))?/?$";s:29:"index.php?&um-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/um-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&um-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/um-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&um-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/um-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&um-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/um-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&um-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/um-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&um-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/um-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&um-api=$matches[3]";s:31:".?.+?/([^/]+)/um-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&um-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/um-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&um-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:108:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:118:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:138:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:133:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:133:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:114:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:115:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/([^/]+)/(.+?)/embed/?$";s:211:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&name=$matches[9]&category_name=$matches[10]&embed=true";s:119:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/([^/]+)/(.+?)/trackback/?$";s:205:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&name=$matches[9]&category_name=$matches[10]&tb=1";s:139:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/([^/]+)/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:218:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&name=$matches[9]&category_name=$matches[10]&feed=$matches[11]";s:134:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/([^/]+)/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:218:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&name=$matches[9]&category_name=$matches[10]&feed=$matches[11]";s:127:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/([^/]+)/(.+?)/page/?([0-9]{1,})/?$";s:219:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&name=$matches[9]&category_name=$matches[10]&paged=$matches[11]";s:134:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/([^/]+)/(.+?)/comment-page-([0-9]{1,})/?$";s:219:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&name=$matches[9]&category_name=$matches[10]&cpage=$matches[11]";s:124:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/([^/]+)/(.+?)/um-api(/(.*))?/?$";s:220:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&name=$matches[9]&category_name=$matches[10]&um-api=$matches[12]";s:112:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/.+?/([^/]+)/um-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&um-api=$matches[3]";s:123:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/.+?/attachment/([^/]+)/um-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&um-api=$matches[3]";s:123:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/([^/]+)/(.+?)(?:/([0-9]+))?/?$";s:218:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&name=$matches[9]&category_name=$matches[10]&page=$matches[11]";s:97:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/.+?/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:107:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/.+?/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:127:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/.+?/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:122:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/.+?/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:122:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/.+?/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:103:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/.+?/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:104:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:114:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:134:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:129:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:129:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:110:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:109:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/([^/]+)/embed/?$";s:184:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&name=$matches[9]&embed=true";s:113:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/([^/]+)/trackback/?$";s:178:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&name=$matches[9]&tb=1";s:133:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:191:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&name=$matches[9]&feed=$matches[10]";s:128:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:191:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&name=$matches[9]&feed=$matches[10]";s:121:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/([^/]+)/page/?([0-9]{1,})/?$";s:192:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&name=$matches[9]&paged=$matches[10]";s:128:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/([^/]+)/comment-page-([0-9]{1,})/?$";s:192:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&name=$matches[9]&cpage=$matches[10]";s:118:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/([^/]+)/um-api(/(.*))?/?$";s:193:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&name=$matches[9]&um-api=$matches[11]";s:108:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/([^/]+)/um-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&um-api=$matches[3]";s:119:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&um-api=$matches[3]";s:117:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/([^/]+)(?:/([0-9]+))?/?$";s:191:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&name=$matches[9]&page=$matches[10]";s:93:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:103:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:123:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:118:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:118:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:99:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:98:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:108:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:128:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:123:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:123:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:104:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:101:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/embed/?$";s:167:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&embed=true";s:105:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/trackback/?$";s:161:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&tb=1";s:125:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:173:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&feed=$matches[9]";s:120:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/(feed|rdf|rss|rss2|atom)/?$";s:173:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&feed=$matches[9]";s:113:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/page/?([0-9]{1,})/?$";s:174:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&paged=$matches[9]";s:120:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/comment-page-([0-9]{1,})/?$";s:174:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&cpage=$matches[9]";s:110:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)/um-api(/(.*))?/?$";s:176:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&um-api=$matches[10]";s:102:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/([^/]+)/um-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&um-api=$matches[3]";s:113:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/attachment/([^/]+)/um-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&um-api=$matches[3]";s:109:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]+)(?:/([0-9]+))?/?$";s:173:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&p=$matches[8]&page=$matches[9]";s:87:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:97:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:117:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:112:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:112:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:93:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:91:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:101:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:121:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:116:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:116:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:97:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:92:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:153:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&embed=true";s:96:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/trackback/?$";s:147:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&tb=1";s:116:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:159:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&feed=$matches[8]";s:111:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:159:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&feed=$matches[8]";s:104:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:160:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&paged=$matches[8]";s:111:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:160:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&cpage=$matches[8]";s:101:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/um-api(/(.*))?/?$";s:161:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&um-api=$matches[9]";s:95:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/([^/]+)/um-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&um-api=$matches[3]";s:106:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/attachment/([^/]+)/um-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&um-api=$matches[3]";s:100:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})(?:/([0-9]+))?/?$";s:159:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&second=$matches[7]&page=$matches[8]";s:80:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:90:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:110:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:105:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:105:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:86:"[^/]+/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/[0-9]{1,2}/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:103:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:140:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&feed=$matches[7]";s:98:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:140:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&feed=$matches[7]";s:79:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:134:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&embed=true";s:91:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:141:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&paged=$matches[7]";s:98:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:141:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&cpage=$matches[7]";s:88:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/um-api(/(.*))?/?$";s:142:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]&um-api=$matches[8]";s:73:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/?$";s:123:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&minute=$matches[6]";s:90:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:121:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&feed=$matches[6]";s:85:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:121:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&feed=$matches[6]";s:66:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:115:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&embed=true";s:78:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:122:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&paged=$matches[6]";s:85:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:122:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&cpage=$matches[6]";s:75:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/um-api(/(.*))?/?$";s:123:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]&um-api=$matches[7]";s:60:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([0-9]{1,2})/?$";s:104:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&day=$matches[5]";s:77:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:105:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&feed=$matches[5]";s:72:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:105:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&feed=$matches[5]";s:53:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:99:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&embed=true";s:65:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:106:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&paged=$matches[5]";s:72:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:106:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&cpage=$matches[5]";s:62:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/um-api(/(.*))?/?$";s:107:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]&um-api=$matches[6]";s:47:"([^/]+)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:88:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&hour=$matches[4]";s:64:"([^/]+)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:88:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]";s:59:"([^/]+)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:88:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]";s:40:"([^/]+)/([0-9]{4})/([0-9]{1,2})/embed/?$";s:82:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true";s:52:"([^/]+)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:89:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]";s:59:"([^/]+)/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:89:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&cpage=$matches[4]";s:49:"([^/]+)/([0-9]{4})/([0-9]{1,2})/um-api(/(.*))?/?$";s:90:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]&um-api=$matches[5]";s:34:"([^/]+)/([0-9]{4})/([0-9]{1,2})/?$";s:71:"index.php?author_name=$matches[1]&year=$matches[2]&monthnum=$matches[3]";s:51:"([^/]+)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?author_name=$matches[1]&year=$matches[2]&feed=$matches[3]";s:46:"([^/]+)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?author_name=$matches[1]&year=$matches[2]&feed=$matches[3]";s:27:"([^/]+)/([0-9]{4})/embed/?$";s:61:"index.php?author_name=$matches[1]&year=$matches[2]&embed=true";s:39:"([^/]+)/([0-9]{4})/page/?([0-9]{1,})/?$";s:68:"index.php?author_name=$matches[1]&year=$matches[2]&paged=$matches[3]";s:46:"([^/]+)/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:68:"index.php?author_name=$matches[1]&year=$matches[2]&cpage=$matches[3]";s:36:"([^/]+)/([0-9]{4})/um-api(/(.*))?/?$";s:69:"index.php?author_name=$matches[1]&year=$matches[2]&um-api=$matches[4]";s:21:"([^/]+)/([0-9]{4})/?$";s:50:"index.php?author_name=$matches[1]&year=$matches[2]";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:16:"([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/um-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&um-api=$matches[3]";s:10:"([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:41:"bp-better-messages/bp-better-messages.php";i:1;s:24:"buddypress/bp-loader.php";i:2;s:9:"hello.php";i:3;s:33:"hide-admin-bar/hide_admin_bar.php";i:4;s:41:"pen-extra-features/pen-extra-features.php";i:5;s:25:"socialsnap/socialsnap.php";i:6;s:35:"ultimate-member/ultimate-member.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'pen', 'yes'),
(41, 'stylesheet', 'pen', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:4:{i:1;a:0:{}s:12:"_multiwidget";i:1;i:2;a:4:{s:5:"title";s:6:"O meni";s:4:"text";s:301:"Dobar dan, ja sam Renato idem u 6. razred osnovne škole, ovu stranicu sam izradio jer mi je zanimljivo, mada ovo nije jedina stranica napravljena od strane mene. Koristim MSN messenger i ponekad AOL Instant Messenger (AIM) jer želim probati neke nove stvari, nadam se da vam se sviđa moja stranica!";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:14:"Pronađite nas";s:4:"text";s:169:"<strong>Adresa</strong>\nGlavna ulica 123\n10 000 Zagreb\n\n<strong>Radno vrijeme</strong>\nPonedjeljak&mdash;Petak: 9:00&ndash;17:00\nSubota &amp; Nedjelja: 11:00&ndash;15:00";s:6:"filter";b:1;s:6:"visual";b:1;}}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:41:"pen-extra-features/pen-extra-features.php";s:20:"pen_plugin_uninstall";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '65', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1635768868', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp5t_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:5:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;i:4;a:1:{s:5:"title";s:8:"Pretraga";}i:6;a:0:{}i:7;a:0:{}}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_archives', 'a:3:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;i:4;a:0:{}}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:11:{s:19:"wp_inactive_widgets";a:10:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:12:"categories-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";i:6;s:18:"um_search_widget-3";i:7;s:6:"text-3";i:8;s:13:"media_video-3";i:9;s:8:"search-6";}s:9:"sidebar-1";a:2:{i:0;s:6:"text-2";i:1;s:8:"search-4";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-3";}s:13:"array_version";i:3;s:13:"about-sidebar";a:1:{i:0;s:18:"um_search_widget-3";}s:8:"footer-2";a:3:{i:0;s:18:"bp_groups_widget-3";i:1;s:22:"bp_core_login_widget-3";i:2;s:28:"bp_core_whos_online_widget-3";}s:14:"sidebar-bottom";a:1:{i:0;s:36:"socialsnap-social-followers-widget-3";}s:19:"sidebar-footer-left";a:1:{i:0;s:22:"bp_core_login_widget-6";}s:20:"sidebar-footer-right";a:1:{i:0;s:18:"bp_groups_widget-5";}s:21:"sidebar-footer-bottom";a:0:{}s:18:"sidebar-footer-top";a:2:{i:0;s:10:"archives-4";i:1;s:8:"search-7";}}', 'yes'),
(148, 'customize_stashed_theme_mods', 'a:1:{s:15:"twentytwentyone";a:3:{s:27:"nav_menu_locations[primary]";a:5:{s:15:"starter_content";b:1;s:5:"value";i:-1;s:4:"type";s:9:"theme_mod";s:7:"user_id";i:1;s:17:"date_modified_gmt";s:19:"2021-05-05 12:14:51";}s:26:"nav_menu_locations[footer]";a:5:{s:15:"starter_content";b:1;s:5:"value";i:-5;s:4:"type";s:9:"theme_mod";s:7:"user_id";i:1;s:17:"date_modified_gmt";s:19:"2021-05-05 12:14:51";}s:16:"background_color";a:4:{s:5:"value";s:7:"#00e2ea";s:4:"type";s:9:"theme_mod";s:7:"user_id";i:1;s:17:"date_modified_gmt";s:19:"2021-05-05 12:16:15";}}}', 'no');
INSERT INTO `wp5t_options` VALUES
(107, 'cron', 'a:12:{i:1628079268;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1628079277;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1628079279;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1628080295;a:1:{s:31:"fs_data_sync_bp-better-messages";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1628081419;a:1:{s:28:"um_check_extensions_licenses";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1628081429;a:3:{s:26:"um_weekly_scheduled_events";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}s:25:"um_daily_scheduled_events";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:30:"um_twicedaily_scheduled_events";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1628090077;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1628090156;a:1:{s:37:"bp_better_messages_send_notifications";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:32:"bp_better_messages_notifications";s:4:"args";a:0:{}s:8:"interval";i:900;}}}i:1628092229;a:1:{s:26:"um_hourly_scheduled_events";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1628122468;a:2:{s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1628165668;a:2:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:13:{s:7:"preload";s:8:"metadata";s:4:"loop";b:0;s:7:"content";s:0:"";s:3:"mp4";s:73:"http://renatogr.cf/wp-content/uploads/2021/08/VID_20210613_234602_317.mp4";s:3:"m4v";s:0:"";s:4:"webm";s:0:"";s:3:"ogv";s:0:"";s:3:"flv";s:0:"";s:13:"attachment_id";i:170;s:3:"url";s:73:"http://renatogr.cf/wp-content/uploads/2021/08/VID_20210613_234602_317.mp4";s:5:"title";s:0:"";s:22:"pen_theme_color_widget";s:9:"automatic";s:26:"pen_theme_animation_widget";s:6:"fadeIn";}}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1620217017;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:6:"text-2";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-3";}}}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:"https_request_failed";a:1:{i:0;s:25:"HTTPS zahtjev nije uspio.";}}', 'yes'),
(121, 'WPLANG', 'hr', 'yes'),
(159, 'recently_activated', 'a:0:{}', 'yes'),
(151, 'theme_mods_skltn', 'a:4:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:6:"header";i:4;}s:19:"skltn_primary_color";s:6:"custom";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1623854396;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:6:"text-2";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-3";}s:13:"about-sidebar";a:1:{i:0;s:18:"um_search_widget-3";}}}}', 'yes'),
(152, 'theme_switch_menu_locations', 'a:1:{s:7:"primary";i:4;}', 'yes'),
(166, 'um_version', '2.1.19', 'yes'),
(167, '__ultimatemember_sitekey', 'renatogr.cf-MK339ruvdaYQrYHemq6M', 'yes'),
(168, 'um_is_installed', '1', 'yes'),
(169, 'um_core_forms', 'a:3:{s:8:"register";i:39;s:5:"login";i:40;s:7:"profile";i:41;}', 'yes'),
(170, 'um_core_directories', 'a:1:{s:7:"members";i:42;}', 'yes'),
(171, 'um_options', 'a:168:{s:30:"restricted_access_post_metabox";a:2:{s:4:"post";i:1;s:4:"page";i:1;}s:19:"uninstall_on_delete";i:0;s:14:"permalink_base";s:10:"user_login";s:12:"display_name";s:9:"full_name";s:18:"display_name_field";s:0:"";s:15:"author_redirect";i:1;s:12:"members_page";i:1;s:13:"use_gravatars";i:0;s:37:"use_um_gravatar_default_builtin_image";s:7:"default";s:29:"use_um_gravatar_default_image";i:0;s:24:"reset_require_strongpass";i:0;s:20:"account_tab_password";i:1;s:19:"account_tab_privacy";i:1;s:25:"account_tab_notifications";i:1;s:18:"account_tab_delete";i:1;s:19:"delete_account_text";s:151:"Are you sure you want to delete your account? This will erase all of your account data from the site. To delete your account enter your password below.";s:36:"delete_account_no_pass_required_text";s:152:"Are you sure you want to delete your account? This will erase all of your account data from the site. To delete your account, click on the button below.";s:12:"account_name";i:1;s:20:"account_name_disable";i:0;s:20:"account_name_require";i:1;s:13:"account_email";i:1;s:24:"account_general_password";i:0;s:25:"account_hide_in_directory";i:1;s:33:"account_hide_in_directory_default";s:2:"No";s:26:"account_require_strongpass";i:0;s:17:"photo_thumb_sizes";a:3:{i:0;i:40;i:1;i:80;i:2;i:190;}s:17:"cover_thumb_sizes";a:2:{i:0;i:300;i:1;i:600;}s:10:"accessible";i:0;s:15:"access_redirect";s:0:"";s:19:"access_exclude_uris";a:0:{}s:20:"home_page_accessible";i:1;s:24:"category_page_accessible";i:1;s:25:"restricted_access_message";s:0:"";s:17:"restricted_blocks";i:0;s:13:"enable_blocks";i:0;s:24:"restricted_block_message";s:0:"";s:27:"enable_reset_password_limit";i:1;s:27:"reset_password_limit_number";i:3;s:14:"blocked_emails";s:0:"";s:13:"blocked_words";s:47:"admin\r\nadministrator\r\nwebmaster\r\nsupport\r\nstaff";s:14:"default_avatar";s:0:"";s:13:"default_cover";s:0:"";s:28:"disable_profile_photo_upload";i:0;s:21:"profile_show_metaicon";i:0;s:12:"profile_menu";i:1;s:24:"profile_menu_default_tab";s:4:"main";s:18:"profile_menu_icons";i:1;s:13:"form_asterisk";i:0;s:13:"profile_title";s:28:"{display_name} | {site_name}";s:12:"profile_desc";s:83:"{display_name} is on {site_name}. Join {site_name} to view {display_name}''s profile";s:11:"admin_email";s:27:"renato.grubesic08@gmail.com";s:9:"mail_from";s:6:"Renato";s:14:"mail_from_addr";s:27:"renato.grubesic08@gmail.com";s:10:"email_html";i:1;s:25:"image_orientation_by_exif";i:0;s:17:"image_compression";i:60;s:15:"image_max_width";i:1000;s:15:"cover_min_width";i:1000;s:22:"profile_photo_max_size";i:999999999;s:20:"cover_photo_max_size";i:999999999;s:22:"custom_roles_increment";i:1;s:28:"um_profile_object_cache_stop";i:0;s:16:"rest_api_version";s:3:"2.0";s:26:"member_directory_own_table";i:0;s:21:"profile_show_html_bio";i:0;s:15:"profile_noindex";i:0;s:27:"activation_link_expiry_time";s:0:"";s:16:"profile_tab_main";i:1;s:24:"profile_tab_main_privacy";i:0;s:22:"profile_tab_main_roles";s:0:"";s:17:"profile_tab_posts";i:1;s:25:"profile_tab_posts_privacy";i:0;s:23:"profile_tab_posts_roles";s:0:"";s:20:"profile_tab_comments";i:1;s:28:"profile_tab_comments_privacy";i:0;s:26:"profile_tab_comments_roles";s:0:"";s:16:"welcome_email_on";b:1;s:17:"welcome_email_sub";s:23:"Welcome to {site_name}!";s:13:"welcome_email";s:365:"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account is now active.<br /><br />To login please visit the following url:<br /><br />{login_url} <br /><br />Your account e-mail: {email} <br />Your account username: {username} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}";s:18:"checkmail_email_on";b:0;s:19:"checkmail_email_sub";s:28:"Please activate your account";s:15:"checkmail_email";s:304:"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! To activate your account, please click the link below to confirm your email address:<br /><br />{account_activation_link} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks, <br />{site_name}";s:16:"pending_email_on";b:0;s:17:"pending_email_sub";s:30:"[{site_name}] New user account";s:13:"pending_email";s:309:"Hi {display_name}, <br /><br />Thank you for signing up with {site_name}! Your account is currently being reviewed by a member of our team.<br /><br />Please allow us some time to process your request.<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}";s:17:"approved_email_on";b:0;s:18:"approved_email_sub";s:41:"Your account at {site_name} is now active";s:14:"approved_email";s:438:"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account has been approved and is now active.<br /><br />To login please visit the following url:<br /><br />{login_url}<br /><br />Your account e-mail: {email}<br />Your account username: {username}<br />Set your account password: {password_reset_link}<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}";s:17:"rejected_email_on";b:0;s:18:"rejected_email_sub";s:30:"Your account has been rejected";s:14:"rejected_email";s:288:"Hi {display_name},<br /><br />Thank you for applying for membership to {site_name}! We have reviewed your information and unfortunately we are unable to accept you as a member at this moment.<br /><br />Please feel free to apply again at a future date.<br /><br />Thanks,<br />{site_name}";s:17:"inactive_email_on";b:1;s:18:"inactive_email_sub";s:33:"Your account has been deactivated";s:14:"inactive_email";s:250:"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deactivated.<br /><br />If you would like your account to be reactivated please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}";s:17:"deletion_email_on";b:1;s:18:"deletion_email_sub";s:29:"Your account has been deleted";s:14:"deletion_email";s:355:"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deleted. All of your personal information has been permanently deleted and you will no longer be able to login to {site_name}.<br /><br />If your account has been deleted by accident please contact us at {admin_email} <br />Thanks,<br />{site_name}";s:16:"resetpw_email_on";b:1;s:17:"resetpw_email_sub";s:19:"Reset your password";s:13:"resetpw_email";s:303:"Hi {display_name},<br /><br />We received a request to reset the password for your account. If you made this request, click the link below to change your password:<br /><br />{password_reset_link}<br /><br />If you didn''t make this request, you can ignore this email <br /><br />Thanks,<br />{site_name}";s:18:"changedpw_email_on";b:1;s:19:"changedpw_email_sub";s:42:"Your {site_name} password has been changed";s:15:"changedpw_email";s:307:"Hi {display_name},<br /><br />You recently changed the password associated with your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}";s:23:"changedaccount_email_on";b:1;s:24:"changedaccount_email_sub";s:39:"Your account at {site_name} was updated";s:20:"changedaccount_email";s:278:"Hi {display_name},<br /><br />You recently updated your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}";s:24:"notification_new_user_on";b:1;s:25:"notification_new_user_sub";s:30:"[{site_name}] New user account";s:21:"notification_new_user";s:211:"{display_name} has just created an account on {site_name}. To view their profile click here:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}";s:22:"notification_review_on";b:0;s:23:"notification_review_sub";s:38:"[{site_name}] New user awaiting review";s:19:"notification_review";s:277:"{display_name} has just applied for membership to {site_name} and is waiting to be reviewed.<br /><br />To review this member please click the following link:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}";s:24:"notification_deletion_on";b:0;s:25:"notification_deletion_sub";s:29:"[{site_name}] Account deleted";s:21:"notification_deletion";s:58:"{display_name} has just deleted their {site_name} account.";s:9:"core_user";s:2:"47";s:10:"core_login";s:2:"48";s:13:"core_register";s:2:"49";s:12:"core_members";s:2:"50";s:11:"core_logout";s:2:"51";s:12:"core_account";s:2:"52";s:19:"core_password-reset";s:2:"53";s:17:"profile_show_name";i:1;s:25:"profile_show_social_links";i:0;s:16:"profile_show_bio";i:1;s:20:"profile_bio_maxchars";i:180;s:19:"profile_header_menu";s:2:"bc";s:18:"profile_empty_text";i:1;s:22:"profile_empty_text_emo";i:1;s:12:"profile_role";a:0:{}s:16:"profile_template";s:7:"profile";s:17:"profile_max_width";s:6:"1000px";s:22:"profile_area_max_width";s:5:"600px";s:13:"profile_align";s:6:"center";s:13:"profile_icons";s:5:"label";s:28:"profile_disable_photo_upload";i:0;s:17:"profile_photosize";s:3:"190";s:21:"profile_cover_enabled";i:1;s:17:"profile_coversize";s:8:"original";s:19:"profile_cover_ratio";s:5:"2.7:1";s:19:"profile_photocorner";s:1:"1";s:17:"profile_header_bg";s:0:"";s:24:"profile_primary_btn_word";s:14:"Update Profile";s:21:"profile_secondary_btn";s:1:"1";s:26:"profile_secondary_btn_word";s:6:"Cancel";s:13:"register_role";s:1:"0";s:17:"register_template";s:8:"register";s:18:"register_max_width";s:5:"450px";s:14:"register_align";s:6:"center";s:14:"register_icons";s:5:"label";s:25:"register_primary_btn_word";s:8:"Register";s:22:"register_secondary_btn";i:1;s:27:"register_secondary_btn_word";s:5:"Login";s:26:"register_secondary_btn_url";s:0:"";s:14:"login_template";s:5:"login";s:15:"login_max_width";s:5:"450px";s:11:"login_align";s:6:"center";s:11:"login_icons";s:5:"label";s:22:"login_primary_btn_word";s:5:"Login";s:22:"login_forgot_pass_link";i:1;s:21:"login_show_rememberme";i:1;s:19:"login_secondary_btn";i:1;s:24:"login_secondary_btn_word";s:8:"Register";s:23:"login_secondary_btn_url";s:0:"";s:18:"directory_template";s:7:"members";s:16:"directory_header";s:21:"{total_users} Members";s:23:"directory_header_single";s:20:"{total_users} Member";s:14:"pages_settings";s:1:"1";}', 'yes'),
(525, 'bp-deactivated-components', 'a:0:{}', 'yes'),
(526, 'bp-xprofile-base-group-name', 'Base', 'yes'),
(527, 'bp-xprofile-fullname-field-name', 'Name', 'yes'),
(528, 'bp-blogs-first-install', '', 'yes'),
(158, 'finished_updating_comment_type', '1', 'yes'),
(232, 'um_cache_userdata_2', 'a:55:{s:2:"ID";i:2;s:10:"user_login";s:6:"tester";s:9:"user_pass";s:34:"$P$BNvFopvZvtS48qyg6b6KDvaA3StWgc1";s:13:"user_nicename";s:6:"tester";s:10:"user_email";s:15:"imejl@imejl.com";s:8:"user_url";s:0:"";s:15:"user_registered";s:19:"2021-05-07 07:54:09";s:11:"user_status";s:1:"0";s:12:"display_name";s:0:"";s:10:"subscriber";b:1;s:8:"wp_roles";s:10:"subscriber";s:4:"read";b:1;s:6:"filter";N;s:16:"\0WP_User\0site_id";i:1;s:8:"nickname";s:6:"tester";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:11:"description";s:0:"";s:12:"rich_editing";s:4:"true";s:19:"syntax_highlighting";s:4:"true";s:17:"comment_shortcuts";s:5:"false";s:11:"admin_color";s:5:"fresh";s:7:"use_ssl";s:1:"0";s:20:"show_admin_bar_front";s:4:"true";s:6:"locale";s:0:"";s:25:"synced_gravatar_hashed_id";s:32:"9940f677b54be0d0ad8fd7d556937c3f";s:24:"um_member_directory_data";s:137:"a:5:{s:14:"account_status";s:8:"approved";s:15:"hide_in_members";b:0;s:13:"profile_photo";b:0;s:11:"cover_photo";b:0;s:8:"verified";b:0;}";s:9:"submitted";s:280:"a:9:{s:7:"form_id";s:2:"39";s:10:"um_request";s:0:"";s:8:"_wpnonce";s:10:"39d17e3483";s:16:"_wp_http_referer";s:12:"/?page_id=49";s:10:"user_login";s:6:"tester";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:10:"user_email";s:15:"imejl@imejl.com";s:9:"timestamp";i:1620374049;}";s:7:"form_id";s:2:"39";s:10:"um_request";s:0:"";s:8:"_wpnonce";s:10:"39d17e3483";s:16:"_wp_http_referer";s:12:"/?page_id=49";s:9:"timestamp";s:10:"1620374049";s:35:"um_user_profile_url_slug_user_login";s:6:"tester";s:9:"full_name";s:0:"";s:14:"account_status";s:8:"approved";s:14:"_um_last_login";s:10:"1620374051";s:19:"account_status_name";s:8:"Approved";s:4:"role";s:10:"subscriber";s:5:"roles";a:1:{i:0;s:10:"subscriber";}s:18:"can_access_wpadmin";i:0;s:20:"can_not_see_adminbar";i:1;s:17:"can_edit_everyone";i:0;s:19:"can_delete_everyone";i:0;s:16:"can_edit_profile";i:1;s:18:"can_delete_profile";i:1;s:11:"after_login";s:16:"redirect_profile";s:12:"after_logout";s:13:"redirect_home";s:16:"default_homepage";i:1;s:12:"can_view_all";i:1;s:24:"can_make_private_profile";i:0;s:26:"can_access_private_profile";i:0;s:6:"status";s:8:"approved";s:16:"auto_approve_act";s:16:"redirect_profile";s:11:"super_admin";i:0;}', 'no'),
(279, 'theme_mods_screenr', 'a:19:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}s:12:"header_image";s:74:"http://renatogr.cf/wp-content/uploads/2021/06/cropped-web-1012467_1920.jpg";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:76;s:3:"url";s:74:"http://renatogr.cf/wp-content/uploads/2021/06/cropped-web-1012467_1920.jpg";s:13:"thumbnail_url";s:74:"http://renatogr.cf/wp-content/uploads/2021/06/cropped-web-1012467_1920.jpg";s:6:"height";i:800;s:5:"width";i:1600;}s:12:"slider_items";a:1:{i:0;a:3:{s:16:"content_layout_1";s:283:"<h1><strong>Dobrodošao/la na moju web stranicu!</strong></h1>\r\n\r\nScreenr je višenamjenska WordPress tema punog zaslona.\r\n\r\n<a class="btn btn-lg btn-theme-primary" href="#features">Započnimo</a> <a class="btn btn-lg btn-secondary-outline" href="#contact">Kontaktirajte nas sada</a>";s:5:"media";a:2:{s:3:"url";s:74:"http://renatogr.cf/wp-content/uploads/2021/06/cropped-web-1012467_1920.jpg";s:2:"id";i:76;}s:8:"position";s:6:"center";}}s:16:"background_color";s:6:"ffffff";s:13:"primary_color";s:6:"9b9b9b";s:15:"page_blog_title";s:5:"Helou";s:17:"show_post_comment";i:1;s:13:"header_layout";s:11:"transparent";s:12:"menu_t_color";s:6:"e0e0e0";s:18:"menu_t_hover_color";s:6:"ff5470";s:21:"menu_t_hover_bg_color";s:6:"f4f4f4";s:15:"logo_text_color";s:6:"eded8b";s:27:"screenr_sections_nav_slider";i:1;s:13:"footer_layout";s:1:"2";s:17:"footer_widgets_bg";s:6:"000000";s:22:"footer_copyright_color";s:6:"3a3a3a";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1627827685;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:8:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:12:"categories-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";i:6;s:18:"um_search_widget-3";i:7;s:6:"text-3";}s:9:"sidebar-1";a:2:{i:0;s:6:"text-2";i:1;s:8:"search-4";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-3";}s:13:"about-sidebar";a:1:{i:0;s:18:"um_search_widget-3";}s:8:"footer-2";a:3:{i:0;s:18:"bp_groups_widget-3";i:1;s:22:"bp_core_login_widget-3";i:2;s:28:"bp_core_whos_online_widget-3";}}}}', 'yes'),
(134, 'can_compress_scripts', '0', 'no'),
(143, 'theme_mods_twentytwenty', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:3:{s:7:"primary";i:2;s:8:"expanded";i:3;s:6:"social";i:4;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1620217315;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:6:"text-2";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-3";}}}}', 'yes'),
(144, 'current_theme', 'Pen', 'yes'),
(145, 'theme_switched', '', 'yes'),
(146, 'theme_switched_via_customizer', '', 'yes'),
(147, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(426, 'category_children', 'a:0:{}', 'yes'),
(164, 'um_last_version_upgrade', '2.1.19', 'yes'),
(165, 'um_first_activation_date', '1620219019', 'yes'),
(529, 'bp-disable-profile-sync', '', 'yes'),
(497, 'fs_gdpr', 'a:1:{s:2:"u1";a:2:{s:8:"required";b:0;s:18:"show_opt_in_notice";b:0;}}', 'yes'),
(495, 'fs_debug_mode', '', 'yes'),
(496, 'fs_accounts', 'a:15:{s:21:"id_slug_type_path_map";a:1:{i:1557;a:3:{s:4:"slug";s:18:"bp-better-messages";s:4:"type";s:6:"plugin";s:4:"path";s:41:"bp-better-messages/bp-better-messages.php";}}s:11:"plugin_data";a:1:{s:18:"bp-better-messages";a:24:{s:16:"plugin_main_file";O:8:"stdClass":1:{s:4:"path";s:41:"bp-better-messages/bp-better-messages.php";}s:20:"is_network_activated";b:0;s:17:"install_timestamp";i:1624010423;s:17:"was_plugin_loaded";b:1;s:21:"is_plugin_new_install";b:0;s:16:"sdk_last_version";N;s:11:"sdk_version";s:5:"2.4.2";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";s:7:"1.9.9.7";s:14:"plugin_version";s:7:"1.9.9.8";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:17:"connectivity_test";a:6:{s:12:"is_connected";b:1;s:4:"host";s:11:"renatogr.cf";s:9:"server_ip";s:14:"83.179.206.118";s:9:"is_active";b:1;s:9:"timestamp";i:1624010423;s:7:"version";s:9:"1.9.8.143";}s:15:"prev_is_premium";b:0;s:30:"is_extensions_tracking_allowed";b:1;s:14:"has_trial_plan";b:1;s:22:"install_sync_timestamp";i:1628069906;s:19:"keepalive_timestamp";i:1628069906;s:20:"activation_timestamp";i:1624010431;s:9:"sync_cron";O:8:"stdClass":5:{s:7:"version";s:9:"1.9.8.143";s:7:"blog_id";i:0;s:11:"sdk_version";s:5:"2.4.2";s:9:"timestamp";i:1624010435;s:2:"on";b:1;}s:14:"sync_timestamp";i:1628069906;s:15:"is_whitelabeled";b:0;s:21:"trial_promotion_shown";i:1625690786;}}s:13:"file_slug_map";a:1:{s:41:"bp-better-messages/bp-better-messages.php";s:18:"bp-better-messages";}s:7:"plugins";a:1:{s:18:"bp-better-messages";O:9:"FS_Plugin":23:{s:16:"parent_plugin_id";N;s:5:"title";s:18:"BP Better Messages";s:4:"slug";s:18:"bp-better-messages";s:12:"premium_slug";s:26:"bp-better-messages-premium";s:4:"type";s:6:"plugin";s:20:"affiliate_moderation";b:0;s:19:"is_wp_org_compliant";b:1;s:22:"premium_releases_count";N;s:4:"file";s:41:"bp-better-messages/bp-better-messages.php";s:7:"version";s:7:"1.9.9.8";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:14:"premium_suffix";s:9:"(Premium)";s:7:"is_live";b:1;s:9:"bundle_id";N;s:17:"bundle_public_key";N;s:10:"public_key";s:32:"pk_8af54172153e9907893f32a4706e2";s:10:"secret_key";N;s:2:"id";s:4:"1557";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:0;}}s:9:"unique_id";s:32:"7ae8770f3d56f64c4202994efac34e79";s:5:"plans";a:1:{s:18:"bp-better-messages";a:4:{i:0;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:8:"MTU1Nw==";s:4:"name";s:8:"ZnJlZQ==";s:5:"title";s:8:"RnJlZQ==";s:11:"description";N;s:17:"is_free_localhost";s:4:"MQ==";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";s:56:"aHR0cHM6Ly93d3cud29yZHBsdXMub3JnL2tub3dsZWRnZS1iYXNlLw==";s:13:"support_forum";s:76:"aHR0cHM6Ly93d3cud29yZHBsdXMub3JnL2ZvcnVtcy9mb3J1bS9icC1iZXR0ZXItbWVzc2FnZXMv";s:13:"support_email";s:40:"c3VwcG9ydEBicGJldHRlcm1lc3NhZ2VzLmNvbQ==";s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:8:"MjYyMQ==";s:7:"updated";s:28:"MjAyMS0wNC0xNCAwNjoyMjo0OA==";s:7:"created";s:28:"MjAxOC0wMi0yNyAwMzoxMDoxOA==";s:22:"\0FS_Entity\0_is_updated";b:0;}i:1;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:8:"MTU1Nw==";s:4:"name";s:12:"d2Vic29ja2V0";s:5:"title";s:12:"V2ViU29ja2V0";s:11:"description";N;s:17:"is_free_localhost";s:0:"";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";s:4:"Mw==";s:23:"is_require_subscription";s:4:"MQ==";s:10:"support_kb";s:56:"aHR0cHM6Ly93d3cud29yZHBsdXMub3JnL2tub3dsZWRnZS1iYXNlLw==";s:13:"support_forum";s:76:"aHR0cHM6Ly93d3cud29yZHBsdXMub3JnL2ZvcnVtcy9mb3J1bS9icC1iZXR0ZXItbWVzc2FnZXMv";s:13:"support_email";s:40:"c3VwcG9ydEBicGJldHRlcm1lc3NhZ2VzLmNvbQ==";s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:4:"MQ==";s:2:"id";s:8:"MjU0Nw==";s:7:"updated";s:28:"MjAyMS0wNC0xNCAxNzoxMjo1NA==";s:7:"created";s:28:"MjAxOC0wMi0xNSAxNDo1OToyMw==";s:22:"\0FS_Entity\0_is_updated";b:0;}i:2;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:8:"MTU1Nw==";s:4:"name";s:28:"d2Vic29ja2V0c2VsZmhvc3RlZA==";s:5:"title";s:28:"V2Vic29ja2V0IFNlbGYgSG9zdGVk";s:11:"description";s:0:"";s:17:"is_free_localhost";s:0:"";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";s:56:"aHR0cHM6Ly93d3cud29yZHBsdXMub3JnL2tub3dsZWRnZS1iYXNlLw==";s:13:"support_forum";s:76:"aHR0cHM6Ly93d3cud29yZHBsdXMub3JnL2ZvcnVtcy9mb3J1bS9icC1iZXR0ZXItbWVzc2FnZXMv";s:13:"support_email";s:40:"c3VwcG9ydEBicGJldHRlcm1lc3NhZ2VzLmNvbQ==";s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:8:"MTIzMDk=";s:7:"updated";s:28:"MjAyMS0wNy0wNyAwNzoxOTozMg==";s:7:"created";s:28:"MjAyMS0wMS0wMiAxMTowNDo1NA==";s:22:"\0FS_Entity\0_is_updated";b:0;}i:3;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:8:"MTU1Nw==";s:4:"name";s:12:"YXJtYXRpczE3";s:5:"title";s:40:"QXJtYXRpcyAxNyBTaXRlcyBTZWxmLUhvc3RlZA==";s:11:"description";N;s:17:"is_free_localhost";s:0:"";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:8:"MTM4OTA=";s:7:"updated";s:28:"MjAyMS0wNS0xOCAyMDowMjo0MA==";s:7:"created";s:28:"MjAyMS0wNS0xOCAxMzo0MTozMw==";s:22:"\0FS_Entity\0_is_updated";b:0;}}}s:14:"active_plugins";O:8:"stdClass":3:{s:9:"timestamp";i:1628069906;s:3:"md5";s:32:"1667c476e188a827d0158e3d340426c2";s:7:"plugins";a:7:{s:41:"bp-better-messages/bp-better-messages.php";a:5:{s:4:"slug";s:18:"bp-better-messages";s:7:"version";s:9:"1.9.8.143";s:5:"title";s:18:"BP Better Messages";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:35:"ultimate-member/ultimate-member.php";a:5:{s:4:"slug";s:15:"ultimate-member";s:7:"version";s:6:"2.1.19";s:5:"title";s:15:"Ultimate Member";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:24:"buddypress/bp-loader.php";a:5:{s:4:"slug";s:10:"buddypress";s:7:"version";s:5:"8.0.0";s:5:"title";s:10:"BuddyPress";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:9:"hello.php";a:15:{s:4:"Name";s:11:"Hello Dolly";s:9:"PluginURI";s:41:"http://wordpress.org/plugins/hello-dolly/";s:7:"Version";s:5:"1.7.2";s:11:"Description";s:295:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong: Hello, Dolly. When activated you will randomly see a lyric from <cite>Hello, Dolly</cite> in the upper right of your admin screen on every page.";s:6:"Author";s:14:"Matt Mullenweg";s:9:"AuthorURI";s:13:"http://ma.tt/";s:10:"TextDomain";s:0:"";s:10:"DomainPath";s:0:"";s:7:"Network";b:0;s:10:"RequiresWP";s:0:"";s:11:"RequiresPHP";s:0:"";s:5:"Title";s:11:"Hello Dolly";s:10:"AuthorName";s:14:"Matt Mullenweg";s:9:"is_active";b:1;s:4:"slug";s:11:"hello-dolly";}s:33:"hide-admin-bar/hide_admin_bar.php";a:5:{s:4:"slug";s:14:"hide-admin-bar";s:7:"version";s:7:"0.4.0.2";s:5:"title";s:14:"Hide Admin Bar";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:41:"pen-extra-features/pen-extra-features.php";a:5:{s:4:"slug";s:18:"pen-extra-features";s:7:"version";s:5:"1.0.7";s:5:"title";s:3:"Pen";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:25:"socialsnap/socialsnap.php";a:5:{s:4:"slug";s:10:"socialsnap";s:7:"version";s:6:"1.1.15";s:5:"title";s:16:"Social Snap Lite";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}}}s:11:"all_plugins";O:8:"stdClass":3:{s:9:"timestamp";i:1628069906;s:3:"md5";s:32:"5fb313d08a7b91e957d6426cda38d1ab";s:7:"plugins";a:8:{s:19:"akismet/akismet.php";a:6:{s:4:"slug";s:7:"akismet";s:7:"version";s:5:"4.1.9";s:5:"title";s:17:"Akismet Anti-Spam";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;s:7:"Version";s:6:"4.1.10";}s:41:"bp-better-messages/bp-better-messages.php";a:6:{s:4:"slug";s:18:"bp-better-messages";s:7:"version";s:9:"1.9.8.143";s:5:"title";s:18:"BP Better Messages";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;s:7:"Version";s:7:"1.9.9.8";}s:9:"hello.php";a:5:{s:4:"slug";s:11:"hello-dolly";s:7:"version";s:5:"1.7.2";s:5:"title";s:11:"Hello Dolly";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:35:"ultimate-member/ultimate-member.php";a:6:{s:4:"slug";s:15:"ultimate-member";s:7:"version";s:6:"2.1.19";s:5:"title";s:15:"Ultimate Member";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;s:7:"Version";s:6:"2.1.21";}s:24:"buddypress/bp-loader.php";a:5:{s:4:"slug";s:10:"buddypress";s:7:"version";s:5:"8.0.0";s:5:"title";s:10:"BuddyPress";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:33:"hide-admin-bar/hide_admin_bar.php";a:5:{s:4:"slug";s:14:"hide-admin-bar";s:7:"version";s:7:"0.4.0.2";s:5:"title";s:14:"Hide Admin Bar";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:41:"pen-extra-features/pen-extra-features.php";a:5:{s:4:"slug";s:18:"pen-extra-features";s:7:"version";s:5:"1.0.7";s:5:"title";s:3:"Pen";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:25:"socialsnap/socialsnap.php";a:5:{s:4:"slug";s:10:"socialsnap";s:7:"version";s:6:"1.1.15";s:5:"title";s:16:"Social Snap Lite";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}}}s:10:"all_themes";O:8:"stdClass":3:{s:9:"timestamp";i:1628069906;s:3:"md5";s:32:"971973bf9dd72e7f4efe8be50827cc81";s:6:"themes";a:6:{s:7:"screenr";a:5:{s:4:"slug";s:7:"screenr";s:7:"version";s:5:"1.2.3";s:5:"title";s:7:"Screenr";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:5:"skltn";a:5:{s:4:"slug";s:5:"skltn";s:7:"version";s:5:"0.1.3";s:5:"title";s:5:"skltn";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:14:"twentynineteen";a:5:{s:4:"slug";s:14:"twentynineteen";s:7:"version";s:3:"2.0";s:5:"title";s:15:"Twenty Nineteen";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:12:"twentytwenty";a:5:{s:4:"slug";s:12:"twentytwenty";s:7:"version";s:3:"1.7";s:5:"title";s:13:"Twenty Twenty";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:15:"twentytwentyone";a:5:{s:4:"slug";s:15:"twentytwentyone";s:7:"version";s:3:"1.3";s:5:"title";s:17:"Twenty Twenty-One";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:3:"pen";a:5:{s:4:"slug";s:3:"pen";s:7:"version";s:5:"1.4.3";s:5:"title";s:3:"Pen";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}}}s:5:"sites";a:1:{s:18:"bp-better-messages";O:7:"FS_Site":26:{s:7:"site_id";s:9:"100349995";s:9:"plugin_id";s:4:"1557";s:7:"user_id";s:7:"4969661";s:5:"title";s:6:"Renato";s:3:"url";s:18:"http://renatogr.cf";s:7:"version";s:7:"1.9.9.8";s:8:"language";s:2:"hr";s:7:"charset";s:5:"UTF-8";s:16:"platform_version";s:5:"5.7.2";s:11:"sdk_version";s:5:"2.4.2";s:28:"programming_language_version";s:5:"7.4.8";s:7:"plan_id";s:4:"2621";s:10:"license_id";N;s:13:"trial_plan_id";N;s:10:"trial_ends";N;s:10:"is_premium";b:0;s:15:"is_disconnected";b:0;s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;s:7:"is_beta";b:0;s:10:"public_key";s:32:"pk_77b0dbca81dd36ec7701768e7bd0f";s:10:"secret_key";s:32:"sk_j}So_zSH=>#q&$SADm]ng=1-%f;=l";s:2:"id";s:7:"7608652";s:7:"updated";s:19:"2021-08-04 09:38:27";s:7:"created";s:19:"2021-06-18 10:00:32";s:22:"\0FS_Entity\0_is_updated";b:0;}}s:5:"users";a:1:{i:4969661;O:7:"FS_User":12:{s:5:"email";s:27:"renato.grubesic08@gmail.com";s:5:"first";s:6:"renato";s:4:"last";s:0:"";s:11:"is_verified";b:0;s:11:"customer_id";N;s:5:"gross";i:0;s:10:"public_key";s:32:"pk_699990e31c3b8a3d10777c9df45fd";s:10:"secret_key";s:32:"sk_OABa{&$1QdMHnPf_%M7Gs6v=_39ZR";s:2:"id";s:7:"4969661";s:7:"updated";N;s:7:"created";s:19:"2021-06-18 10:00:31";s:22:"\0FS_Entity\0_is_updated";b:0;}}s:23:"user_id_license_ids_map";a:1:{i:1557;a:1:{i:4969661;a:0:{}}}s:12:"all_licenses";a:1:{i:1557;a:0:{}}s:13:"admin_notices";a:1:{s:18:"bp-better-messages";a:0:{}}s:6:"addons";a:1:{i:1557;a:2:{i:0;O:9:"FS_Plugin":23:{s:16:"parent_plugin_id";s:4:"1557";s:5:"title";s:14:"Voice Messages";s:4:"slug";s:33:"bp-better-messages-voice-messages";s:12:"premium_slug";s:33:"bp-better-messages-voice-messages";s:4:"type";s:6:"plugin";s:20:"affiliate_moderation";N;s:19:"is_wp_org_compliant";b:0;s:22:"premium_releases_count";i:4;s:4:"file";N;s:7:"version";N;s:11:"auto_update";N;s:4:"info";O:14:"FS_Plugin_Info":13:{s:9:"plugin_id";s:4:"8659";s:11:"description";s:70:"Enable your users to send voice messages additionally to text messages";s:17:"short_description";s:70:"Enable your users to send voice messages additionally to text messages";s:10:"banner_url";s:61:"//s3-us-west-2.amazonaws.com/freemius/plugins/8659/banner.png";s:15:"card_banner_url";s:66:"//s3-us-west-2.amazonaws.com/freemius/plugins/8659/card_banner.png";s:15:"selling_point_0";s:0:"";s:15:"selling_point_1";s:0:"";s:15:"selling_point_2";s:0:"";s:11:"screenshots";O:8:"stdClass":3:{s:12:"screenshot_0";s:68:"//s3-us-west-2.amazonaws.com/freemius/plugins/8659/screenshots/0.png";s:12:"screenshot_1";s:68:"//s3-us-west-2.amazonaws.com/freemius/plugins/8659/screenshots/1.png";s:12:"screenshot_2";s:68:"//s3-us-west-2.amazonaws.com/freemius/plugins/8659/screenshots/2.png";}s:2:"id";s:4:"2293";s:7:"updated";s:19:"2021-07-09 13:08:04";s:7:"created";s:19:"2021-07-05 16:22:46";s:22:"\0FS_Entity\0_is_updated";b:0;}s:10:"is_premium";b:0;s:14:"premium_suffix";s:9:"(Premium)";s:7:"is_live";b:1;s:9:"bundle_id";N;s:17:"bundle_public_key";N;s:10:"public_key";s:32:"pk_745a013c686d96e42b595ae8af577";s:10:"secret_key";N;s:2:"id";s:4:"8659";s:7:"updated";s:19:"2021-08-02 19:45:40";s:7:"created";s:19:"2021-07-05 16:03:13";s:22:"\0FS_Entity\0_is_updated";b:0;}i:1;O:9:"FS_Plugin":23:{s:16:"parent_plugin_id";s:4:"1557";s:5:"title";s:22:"WC Vendors Integration";s:4:"slug";s:29:"bp-better-messages-wc-vendors";s:12:"premium_slug";s:37:"bp-better-messages-wc-vendors-premium";s:4:"type";s:6:"plugin";s:20:"affiliate_moderation";N;s:19:"is_wp_org_compliant";b:0;s:22:"premium_releases_count";i:0;s:4:"file";N;s:7:"version";N;s:11:"auto_update";N;s:4:"info";O:14:"FS_Plugin_Info":13:{s:9:"plugin_id";s:4:"8691";s:11:"description";s:224:"<p>Integration with <a href="https://www.wordplus.org/wcvendors" target="_blank">WC Vendors</a> plugin.</p>\n\n<p>Allows connect sellers and buyers with private messaging system</p>\n\nhttps://www.youtube.com/watch?v=Z3h1UQ03wPE";s:17:"short_description";s:34:"Integration with WC Vendors plugin";s:10:"banner_url";N;s:15:"card_banner_url";s:66:"//s3-us-west-2.amazonaws.com/freemius/plugins/8691/card_banner.png";s:15:"selling_point_0";s:0:"";s:15:"selling_point_1";s:0:"";s:15:"selling_point_2";s:0:"";s:11:"screenshots";O:8:"stdClass":3:{s:12:"screenshot_0";s:68:"//s3-us-west-2.amazonaws.com/freemius/plugins/8691/screenshots/0.png";s:12:"screenshot_1";s:68:"//s3-us-west-2.amazonaws.com/freemius/plugins/8691/screenshots/1.png";s:12:"screenshot_2";s:68:"//s3-us-west-2.amazonaws.com/freemius/plugins/8691/screenshots/2.png";}s:2:"id";s:4:"2327";s:7:"updated";s:19:"2021-07-30 16:17:07";s:7:"created";s:19:"2021-07-30 09:34:28";s:22:"\0FS_Entity\0_is_updated";b:0;}s:10:"is_premium";b:0;s:14:"premium_suffix";s:9:"(Premium)";s:7:"is_live";b:1;s:9:"bundle_id";N;s:17:"bundle_public_key";N;s:10:"public_key";s:32:"pk_81572487ef5c67b080edb79788813";s:10:"secret_key";N;s:2:"id";s:4:"8691";s:7:"updated";s:19:"2021-08-01 22:55:23";s:7:"created";s:19:"2021-07-10 14:54:00";s:22:"\0FS_Entity\0_is_updated";b:0;}}}}', 'yes'),
(871, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1628114115', 'no'),
(872, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1628114115', 'no'),
(873, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1628070915', 'no'),
(874, '_transient_timeout_dash_v2_f5116301b42b1913068cab98bca521a2', '1628114115', 'no'),
(875, '_transient_dash_v2_f5116301b42b1913068cab98bca521a2', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2021/08/the-month-in-wordpress-july-2021/''>The Month in WordPress: July 2021</a></li><li><a class=''rsswidget'' href=''https://wordpress.org/news/2021/08/episode-14-the-art-and-science-of-accessibility/''>WP Briefing: Episode 14: The Art and Science of Accessibility</a></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://heropress.com/essays/my-life-before-after-wordpress/#utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=my-life-before-after-wordpress''>HeroPress: My Life Before &amp; After WordPress</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/full-page-patterns-are-still-the-missing-piece-of-block-wordpress-theme-development?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=full-page-patterns-are-still-the-missing-piece-of-block-wordpress-theme-development''>WPTavern: Full Page Patterns Are Still the Missing Piece of Block WordPress Theme Development</a></li><li><a class=''rsswidget'' href=''https://wordpress.org/news/2021/08/the-month-in-wordpress-july-2021/''>WordPress.org blog: The Month in WordPress: July 2021</a></li></ul></div>', 'no'),
(878, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1628081725', 'no'),
(879, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:5045;}s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4757;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2722;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2595;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:2005;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1862;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1845;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1524;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1510;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1505;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1500;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1494;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1473;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1311;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:1276;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:1269;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1235;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1158;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1129;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:1059;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:964;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:938;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:914;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:889;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:887;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:835;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:818;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:812;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:812;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:788;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:762;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:750;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:732;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:729;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:725;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:715;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:698;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:684;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:667;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:666;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:665;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:661;}s:9:"gutenberg";a:3:{s:4:"name";s:9:"gutenberg";s:4:"slug";s:9:"gutenberg";s:5:"count";i:659;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:659;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:651;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:623;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:602;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:599;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:592;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:591;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:576;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:574;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:567;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:565;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:563;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:558;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:549;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:548;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:548;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:539;}s:9:"elementor";a:3:{s:4:"name";s:9:"elementor";s:4:"slug";s:9:"elementor";s:5:"count";i:536;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:530;}s:5:"block";a:3:{s:4:"name";s:5:"block";s:4:"slug";s:5:"block";s:5:"count";i:529;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:524;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:513;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:506;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:499;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:497;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:496;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:489;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:481;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:471;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:463;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:461;}s:14:"contact-form-7";a:3:{s:4:"name";s:14:"contact form 7";s:4:"slug";s:14:"contact-form-7";s:5:"count";i:459;}s:8:"shipping";a:3:{s:4:"name";s:8:"shipping";s:4:"slug";s:8:"shipping";s:5:"count";i:455;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:453;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:448;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:446;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:444;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:433;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:427;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:422;}s:11:"performance";a:3:{s:4:"name";s:11:"performance";s:4:"slug";s:11:"performance";s:5:"count";i:416;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:411;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:409;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:407;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:401;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:398;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:391;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:389;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:382;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:382;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:381;}s:6:"import";a:3:{s:4:"name";s:6:"import";s:4:"slug";s:6:"import";s:5:"count";i:374;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:371;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:368;}s:6:"blocks";a:3:{s:4:"name";s:6:"blocks";s:4:"slug";s:6:"blocks";s:5:"count";i:366;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:358;}s:5:"cache";a:3:{s:4:"name";s:5:"cache";s:4:"slug";s:5:"cache";s:5:"count";i:357;}}', 'no'),
(248, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:27:"renato.grubesic08@gmail.com";s:7:"version";s:5:"5.7.2";s:9:"timestamp";i:1621106892;}', 'no'),
(172, 'um_role_subscriber_meta', 'a:14:{s:22:"_um_can_access_wpadmin";i:0;s:24:"_um_can_not_see_adminbar";i:1;s:21:"_um_can_edit_everyone";i:0;s:23:"_um_can_delete_everyone";i:0;s:20:"_um_can_edit_profile";i:1;s:22:"_um_can_delete_profile";i:1;s:15:"_um_after_login";s:16:"redirect_profile";s:16:"_um_after_logout";s:13:"redirect_home";s:20:"_um_default_homepage";i:1;s:16:"_um_can_view_all";i:1;s:28:"_um_can_make_private_profile";i:0;s:30:"_um_can_access_private_profile";i:0;s:10:"_um_status";s:8:"approved";s:20:"_um_auto_approve_act";s:16:"redirect_profile";}', 'yes'),
(173, 'um_role_author_meta', 'a:14:{s:22:"_um_can_access_wpadmin";i:0;s:24:"_um_can_not_see_adminbar";i:1;s:21:"_um_can_edit_everyone";i:0;s:23:"_um_can_delete_everyone";i:0;s:20:"_um_can_edit_profile";i:1;s:22:"_um_can_delete_profile";i:1;s:15:"_um_after_login";s:16:"redirect_profile";s:16:"_um_after_logout";s:13:"redirect_home";s:20:"_um_default_homepage";i:1;s:16:"_um_can_view_all";i:1;s:28:"_um_can_make_private_profile";i:0;s:30:"_um_can_access_private_profile";i:0;s:10:"_um_status";s:8:"approved";s:20:"_um_auto_approve_act";s:16:"redirect_profile";}', 'yes'),
(174, 'um_role_contributor_meta', 'a:14:{s:22:"_um_can_access_wpadmin";i:0;s:24:"_um_can_not_see_adminbar";i:1;s:21:"_um_can_edit_everyone";i:0;s:23:"_um_can_delete_everyone";i:0;s:20:"_um_can_edit_profile";i:1;s:22:"_um_can_delete_profile";i:1;s:15:"_um_after_login";s:16:"redirect_profile";s:16:"_um_after_logout";s:13:"redirect_home";s:20:"_um_default_homepage";i:1;s:16:"_um_can_view_all";i:1;s:28:"_um_can_make_private_profile";i:0;s:30:"_um_can_access_private_profile";i:0;s:10:"_um_status";s:8:"approved";s:20:"_um_auto_approve_act";s:16:"redirect_profile";}', 'yes'),
(175, 'um_role_editor_meta', 'a:14:{s:22:"_um_can_access_wpadmin";i:0;s:24:"_um_can_not_see_adminbar";i:1;s:21:"_um_can_edit_everyone";i:0;s:23:"_um_can_delete_everyone";i:0;s:20:"_um_can_edit_profile";i:1;s:22:"_um_can_delete_profile";i:1;s:15:"_um_after_login";s:16:"redirect_profile";s:16:"_um_after_logout";s:13:"redirect_home";s:20:"_um_default_homepage";i:1;s:16:"_um_can_view_all";i:1;s:28:"_um_can_make_private_profile";i:0;s:30:"_um_can_access_private_profile";i:0;s:10:"_um_status";s:8:"approved";s:20:"_um_auto_approve_act";s:16:"redirect_profile";}', 'yes'),
(176, 'um_role_administrator_meta', 'a:14:{s:22:"_um_can_access_wpadmin";i:1;s:24:"_um_can_not_see_adminbar";i:0;s:21:"_um_can_edit_everyone";i:1;s:23:"_um_can_delete_everyone";i:1;s:20:"_um_can_edit_profile";i:1;s:22:"_um_can_delete_profile";i:1;s:20:"_um_default_homepage";i:1;s:15:"_um_after_login";s:14:"redirect_admin";s:16:"_um_after_logout";s:13:"redirect_home";s:16:"_um_can_view_all";i:1;s:28:"_um_can_make_private_profile";i:1;s:30:"_um_can_access_private_profile";i:1;s:10:"_um_status";s:8:"approved";s:20:"_um_auto_approve_act";s:16:"redirect_profile";}', 'yes'),
(177, 'widget_um_search_widget', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(438, 'um_cache_userdata_1', 'a:103:{s:2:"ID";i:1;s:10:"user_login";s:6:"Renato";s:9:"user_pass";s:34:"$P$B31YFqKUNL.on7DqLTV19Xw.0BFu3i/";s:13:"user_nicename";s:6:"renato";s:10:"user_email";s:27:"renato.grubesic08@gmail.com";s:8:"user_url";s:18:"http://renatogr.cf";s:15:"user_registered";s:19:"2021-05-05 12:14:28";s:11:"user_status";s:1:"0";s:12:"display_name";s:6:"Renato";s:13:"administrator";b:1;s:8:"wp_roles";s:13:"administrator";s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:6:"filter";N;s:16:"\0WP_User\0site_id";i:1;s:8:"nickname";s:6:"Renato";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:11:"description";s:0:"";s:12:"rich_editing";s:4:"true";s:19:"syntax_highlighting";s:4:"true";s:17:"comment_shortcuts";s:5:"false";s:11:"admin_color";s:5:"fresh";s:7:"use_ssl";s:1:"0";s:20:"show_admin_bar_front";s:4:"true";s:6:"locale";s:0:"";s:18:"show_welcome_panel";s:1:"1";s:39:"wp5t_dashboard_quick_press_last_post_id";s:2:"72";s:25:"community-events-location";s:35:"a:1:{s:2:"ip";s:12:"95.168.120.0";}";s:14:"account_status";s:8:"approved";s:24:"um_member_directory_data";s:137:"a:5:{s:14:"account_status";s:8:"approved";s:15:"hide_in_members";b:0;s:13:"profile_photo";b:0;s:11:"cover_photo";b:0;s:8:"verified";b:0;}";s:35:"um_user_profile_url_slug_user_login";s:6:"Renato";s:24:"um_account_secure_fields";s:310:"a:4:{s:7:"general";a:4:{i:0;s:10:"user_login";i:1;s:10:"first_name";i:2;s:9:"last_name";i:3;s:10:"user_email";}s:8:"password";a:1:{i:0;s:13:"user_password";}s:7:"privacy";a:3:{i:0;s:15:"profile_privacy";i:1;s:15:"profile_noindex";i:2;s:15:"hide_in_members";}s:6:"delete";a:1:{i:0;s:20:"single_user_password";}}";s:18:"wp5t_user-settings";s:21:"libraryContent=browse";s:23:"wp5t_user-settings-time";s:10:"1620221518";s:20:"default_password_nag";s:0:"";s:14:"_um_last_login";s:10:"1623853752";s:19:"account_status_name";s:8:"Approved";s:4:"role";s:13:"administrator";s:5:"roles";a:1:{i:0;s:13:"administrator";}s:18:"can_access_wpadmin";i:1;s:20:"can_not_see_adminbar";i:0;s:17:"can_edit_everyone";i:1;s:19:"can_delete_everyone";i:1;s:16:"can_edit_profile";i:1;s:18:"can_delete_profile";i:1;s:16:"default_homepage";i:1;s:11:"after_login";s:14:"redirect_admin";s:12:"after_logout";s:13:"redirect_home";s:12:"can_view_all";i:1;s:24:"can_make_private_profile";i:1;s:26:"can_access_private_profile";i:1;s:6:"status";s:8:"approved";s:16:"auto_approve_act";s:16:"redirect_profile";s:11:"super_admin";i:1;}', 'no');
INSERT INTO `wp5t_options` VALUES
(228, '_transient_health-check-site-status-result', '{"good":"13","recommended":"7","critical":"0"}', 'yes'),
(930, '_site_transient_available_translations', 'a:126:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-05-13 15:59:22";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-08 18:29:33";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:6:"4.8.17";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.8.17/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-14 14:01:58";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2019-10-29 07:54:22";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.9.18/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-20 19:46:45";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"5.4.6";s:7:"updated";s:19:"2020-10-31 08:48:37";s:12:"english_name";s:20:"Bengali (Bangladesh)";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.4.6/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2020-10-30 03:24:38";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-04-25 07:27:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-06 08:29:04";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-30 15:14:54";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:9:"Čeština";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-19 10:54:01";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-09 08:43:53";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-03-14 20:06:52";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/5.7.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-03-14 20:06:23";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-19 12:13:54";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/5.7.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-19 12:13:47";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_AT";a:8:{s:8:"language";s:5:"de_AT";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-08 07:32:43";s:12:"english_name";s:16:"German (Austria)";s:11:"native_name";s:21:"Deutsch (Österreich)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/de_AT.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dsb";a:8:{s:8:"language";s:3:"dsb";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-04-15 13:33:04";s:12:"english_name";s:13:"Lower Sorbian";s:11:"native_name";s:16:"Dolnoserbšćina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.7.2/dsb.zip";s:3:"iso";a:2:{i:2;s:3:"dsb";i:3;s:3:"dsb";}s:7:"strings";a:1:{s:8:"continue";s:5:"Dalej";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-08-02 14:02:20";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-16 08:10:36";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-04-15 04:12:28";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-04-15 04:12:40";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-04-15 04:12:51";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-04-15 07:22:30";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-04-18 09:35:35";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-20 18:23:47";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/es_ES.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-04 22:59:08";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/es_CO.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-04-16 13:07:32";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/es_MX.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_EC";a:8:{s:8:"language";s:5:"es_EC";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-04-15 02:05:34";s:12:"english_name";s:17:"Spanish (Ecuador)";s:11:"native_name";s:19:"Español de Ecuador";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/es_EC.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-04-16 02:17:21";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/es_AR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-04-15 02:05:15";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/es_VE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_UY";a:8:{s:8:"language";s:5:"es_UY";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-03-31 18:33:26";s:12:"english_name";s:17:"Spanish (Uruguay)";s:11:"native_name";s:19:"Español de Uruguay";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/es_UY.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"5.6.4";s:7:"updated";s:19:"2020-12-11 02:12:59";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.6.4/es_PE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PR";a:8:{s:8:"language";s:5:"es_PR";s:7:"version";s:5:"5.4.6";s:7:"updated";s:19:"2020-04-29 15:36:59";s:12:"english_name";s:21:"Spanish (Puerto Rico)";s:11:"native_name";s:23:"Español de Puerto Rico";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.4.6/es_PR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:6:"5.2.11";s:7:"updated";s:19:"2019-03-02 06:35:01";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/5.2.11/es_GT.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CR";a:8:{s:8:"language";s:5:"es_CR";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-02 03:00:51";s:12:"english_name";s:20:"Spanish (Costa Rica)";s:11:"native_name";s:22:"Español de Costa Rica";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/es_CR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-14 16:02:22";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/es_CL.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2020-08-12 08:38:59";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-24 16:08:10";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-28 10:15:19";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"fa_AF";a:8:{s:8:"language";s:5:"fa_AF";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-14 12:40:09";s:12:"english_name";s:21:"Persian (Afghanistan)";s:11:"native_name";s:31:"(فارسی (افغانستان";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/fa_AF.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-05-06 05:21:48";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-02-22 13:54:46";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-04-30 13:29:35";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-24 08:28:29";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:3:"fur";a:8:{s:8:"language";s:3:"fur";s:7:"version";s:6:"4.8.17";s:7:"updated";s:19:"2018-01-29 17:32:35";s:12:"english_name";s:8:"Friulian";s:11:"native_name";s:8:"Friulian";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.8.17/fur.zip";s:3:"iso";a:2:{i:2;s:3:"fur";i:3;s:3:"fur";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-21 09:58:55";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2018-09-14 12:33:48";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.18/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:6:"4.4.25";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.4.25/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-05-28 16:42:59";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"5.4.6";s:7:"updated";s:19:"2020-11-06 12:34:38";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.4.6/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-05-13 08:03:31";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:3:"hsb";a:8:{s:8:"language";s:3:"hsb";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-04-15 13:34:18";s:12:"english_name";s:13:"Upper Sorbian";s:11:"native_name";s:17:"Hornjoserbšćina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.7.2/hsb.zip";s:3:"iso";a:2:{i:2;s:3:"hsb";i:3;s:3:"hsb";}s:7:"strings";a:1:{s:8:"continue";s:4:"Dale";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-26 14:52:10";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-04-24 02:11:27";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2018-12-11 10:40:02";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.9.18/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-24 17:20:09";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-05-20 01:00:08";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"jv_ID";a:8:{s:8:"language";s:5:"jv_ID";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2019-02-16 23:58:56";s:12:"english_name";s:8:"Javanese";s:11:"native_name";s:9:"Basa Jawa";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.9.18/jv_ID.zip";s:3:"iso";a:2:{i:1;s:2:"jv";i:2;s:3:"jav";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nutugne";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-03 08:25:10";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-30 20:40:17";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.7.2/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"kk";a:8:{s:8:"language";s:2:"kk";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2018-07-10 11:35:44";s:12:"english_name";s:6:"Kazakh";s:11:"native_name";s:19:"Қазақ тілі";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.18/kk.zip";s:3:"iso";a:2:{i:1;s:2:"kk";i:2;s:3:"kaz";}s:7:"strings";a:1:{s:8:"continue";s:20:"Жалғастыру";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:6:"5.2.11";s:7:"updated";s:19:"2019-06-10 16:18:28";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.2.11/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:2:"kn";a:8:{s:8:"language";s:2:"kn";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2020-09-30 14:08:59";s:12:"english_name";s:7:"Kannada";s:11:"native_name";s:15:"ಕನ್ನಡ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.18/kn.zip";s:3:"iso";a:2:{i:1;s:2:"kn";i:2;s:3:"kan";}s:7:"strings";a:1:{s:8:"continue";s:30:"ಮುಂದುವರೆಸಿ";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-08 04:56:41";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-17 10:36:11";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:9:"ຕໍ່";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-03-23 12:35:40";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-27 17:07:17";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"5.4.6";s:7:"updated";s:19:"2020-07-01 09:16:57";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.4.6/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2019-11-22 15:32:08";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.18/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2018-08-31 11:57:07";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.9.18/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.2.30";s:7:"updated";s:19:"2017-12-26 11:57:10";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.2.30/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-08 06:18:21";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:6:"5.2.11";s:7:"updated";s:19:"2020-05-31 16:07:59";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/5.2.11/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:31:"जारीराख्नु ";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-20 11:18:28";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-18 08:55:40";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-05-10 14:42:01";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/5.7.2/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-03-18 10:59:16";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:6:"4.8.17";s:7:"updated";s:19:"2017-08-25 10:03:08";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.8.17/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-08-04 08:18:45";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.3.26";s:7:"updated";s:19:"2015-12-02 21:41:29";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3.26/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-20 18:36:04";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:10:"pt_PT_ao90";a:8:{s:8:"language";s:10:"pt_PT_ao90";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-20 18:29:14";s:12:"english_name";s:27:"Portuguese (Portugal, AO90)";s:11:"native_name";s:17:"Português (AO90)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/5.7.2/pt_PT_ao90.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-02 12:53:00";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_AO";a:8:{s:8:"language";s:5:"pt_AO";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-05-30 09:51:29";s:12:"english_name";s:19:"Portuguese (Angola)";s:11:"native_name";s:20:"Português de Angola";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/pt_AO.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-08-02 15:06:33";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-14 18:30:49";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:3:"snd";a:8:{s:8:"language";s:3:"snd";s:7:"version";s:5:"5.4.6";s:7:"updated";s:19:"2020-07-07 01:53:37";s:12:"english_name";s:6:"Sindhi";s:11:"native_name";s:8:"سنڌي";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.4.6/snd.zip";s:3:"iso";a:3:{i:1;s:2:"sd";i:2;s:3:"snd";i:3;s:3:"snd";}s:7:"strings";a:1:{s:8:"continue";s:15:"اڳتي هلو";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-11 15:17:09";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:3:"skr";a:8:{s:8:"language";s:3:"skr";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-04-23 11:54:14";s:12:"english_name";s:7:"Saraiki";s:11:"native_name";s:14:"سرائیکی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.7.2/skr.zip";s:3:"iso";a:1:{i:3;s:3:"skr";}s:7:"strings";a:1:{s:8:"continue";s:17:"جاری رکھو";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:6:"5.1.10";s:7:"updated";s:19:"2019-04-30 13:03:56";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/5.1.10/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-05-13 15:40:47";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-14 19:47:34";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-02 21:27:49";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"sw";a:8:{s:8:"language";s:2:"sw";s:7:"version";s:5:"5.3.8";s:7:"updated";s:19:"2019-10-13 15:35:35";s:12:"english_name";s:7:"Swahili";s:11:"native_name";s:9:"Kiswahili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.3.8/sw.zip";s:3:"iso";a:2:{i:1;s:2:"sw";i:2;s:3:"swa";}s:7:"strings";a:1:{s:8:"continue";s:7:"Endelea";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:5:"ta_LK";a:8:{s:8:"language";s:5:"ta_LK";s:7:"version";s:6:"4.2.30";s:7:"updated";s:19:"2015-12-03 01:07:44";s:12:"english_name";s:17:"Tamil (Sri Lanka)";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.2.30/ta_LK.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:18:"தொடர்க";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"5.5.5";s:7:"updated";s:19:"2021-07-13 19:33:34";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.5.5/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:6:"4.8.17";s:7:"updated";s:19:"2017-09-30 09:04:29";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.17/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-05-23 09:26:34";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2021-07-03 18:41:33";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:16:"ئۇيغۇرچە";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.9.18/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-24 15:34:57";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"5.4.6";s:7:"updated";s:19:"2020-04-09 11:17:33";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.4.6/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-02-28 12:02:22";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-05-23 07:16:16";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.7.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-07-15 13:16:04";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-08-03 04:52:33";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"5.7.2";s:7:"updated";s:19:"2021-06-15 12:16:10";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.7.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'no'),
(897, '_transient_is_multi_author', '0', 'yes'),
(900, 'illegal_names', 'a:20:{i:0;s:3:"www";i:1;s:3:"web";i:2;s:4:"root";i:3;s:5:"admin";i:4;s:4:"main";i:5;s:6:"invite";i:6;s:13:"administrator";i:7;s:6:"groups";i:8;s:7:"members";i:9;s:6:"forums";i:10;s:5:"blogs";i:11;s:8:"activity";i:12;s:7:"profile";i:13;s:7:"friends";i:14;s:6:"search";i:15;s:8:"settings";i:16;s:13:"notifications";i:17;s:8:"register";i:18;s:8:"activate";i:19;s:9:"aktiviraj";}', 'no'),
(928, 'um_cached_users_queue', '0', 'no'),
(921, '_transient_doing_cron', '1628089997.0152080059051513671875', 'yes'),
(494, 'fs_active_plugins', 'O:8:"stdClass":3:{s:7:"plugins";a:1:{s:31:"bp-better-messages/inc/freemius";O:8:"stdClass":4:{s:7:"version";s:5:"2.4.2";s:4:"type";s:6:"plugin";s:9:"timestamp";i:1624010423;s:11:"plugin_path";s:41:"bp-better-messages/bp-better-messages.php";}}s:7:"abspath";s:44:"/home/vol1_3/epizy.com/epiz_28545549/htdocs/";s:6:"newest";O:8:"stdClass":5:{s:11:"plugin_path";s:41:"bp-better-messages/bp-better-messages.php";s:8:"sdk_path";s:31:"bp-better-messages/inc/freemius";s:7:"version";s:5:"2.4.2";s:13:"in_activation";b:0;s:9:"timestamp";i:1624010423;}}', 'yes'),
(716, 'widget_socialsnap-social-followers-widget', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:0:{}}', 'yes'),
(717, 'widget_socialsnap-ctt-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(718, 'socialsnap_settings', 'a:59:{s:24:"ss_social_share_networks";a:2:{s:8:"facebook";a:3:{s:4:"text";s:8:"Facebook";s:18:"desktop_visibility";s:2:"on";s:17:"mobile_visibility";s:2:"on";}s:5:"order";s:8:"facebook";}s:29:"ss_ss_facebook_count_provider";s:9:"authorize";s:31:"ss_ss_facebook_shared_count_api";s:0:"";s:27:"ss_ss_facebook_access_token";s:0:"";s:21:"ss_ss_sidebar_enabled";s:2:"on";s:22:"ss_ss_sidebar_position";s:4:"left";s:26:"ss_ss_sidebar_button_shape";s:7:"rounded";s:25:"ss_ss_sidebar_button_size";s:7:"regular";s:24:"ss_ss_sidebar_post_types";a:6:{s:4:"home";s:2:"on";s:4:"post";s:2:"on";s:4:"blog";s:0:"";s:4:"page";s:0:"";s:8:"category";s:0:"";s:8:"post_tag";s:0:"";}s:26:"ss_ss_sidebar_all_networks";s:2:"on";s:27:"ss_ss_sidebar_label_tooltip";s:2:"on";s:28:"ss_ss_inline_content_enabled";s:2:"on";s:29:"ss_ss_inline_content_location";s:5:"below";s:29:"ss_ss_inline_content_position";s:4:"left";s:32:"ss_ss_inline_content_share_label";s:10:"Share via:";s:33:"ss_ss_inline_content_button_shape";s:7:"rounded";s:32:"ss_ss_inline_content_button_size";s:5:"small";s:33:"ss_ss_inline_content_button_label";s:5:"label";s:31:"ss_ss_inline_content_post_types";a:6:{s:4:"post";s:2:"on";s:4:"home";s:0:"";s:4:"blog";s:0:"";s:4:"page";s:0:"";s:8:"category";s:0:"";s:8:"post_tag";s:0:"";}s:35:"ss_ss_inline_content_button_spacing";s:2:"on";s:33:"ss_ss_inline_content_all_networks";s:2:"on";s:39:"ss_ss_inline_content_all_networks_label";s:4:"More";s:19:"ss_ss_on_media_type";s:6:"pin_it";s:27:"ss_ss_on_media_button_shape";s:6:"circle";s:26:"ss_ss_on_media_button_size";s:7:"regular";s:20:"ss_ss_on_media_hover";s:6:"always";s:23:"ss_ss_on_media_position";s:8:"top-left";s:23:"ss_ss_on_media_minwidth";s:3:"250";s:24:"ss_ss_on_media_minheight";s:3:"250";s:25:"ss_ss_on_media_post_types";a:6:{s:4:"post";s:2:"on";s:4:"page";s:2:"on";s:4:"home";s:0:"";s:4:"blog";s:0:"";s:8:"category";s:0:"";s:8:"post_tag";s:0:"";}s:29:"ss_ss_on_media_button_spacing";s:2:"on";s:33:"ss_social_follow_connect_networks";a:7:{s:5:"order";s:47:"facebook;twitter;pinterest;instagram;tumblr;mix";s:8:"facebook";a:3:{s:7:"profile";a:2:{s:8:"username";s:0:"";s:3:"url";s:0:"";}s:5:"label";s:21:"Follow us on Facebook";s:16:"manual_followers";s:0:"";}s:7:"twitter";a:3:{s:7:"profile";a:2:{s:8:"username";s:0:"";s:3:"url";s:0:"";}s:5:"label";s:20:"Follow us on Twitter";s:16:"manual_followers";s:0:"";}s:9:"pinterest";a:2:{s:7:"profile";a:2:{s:8:"username";s:0:"";s:3:"url";s:0:"";}s:5:"label";s:22:"Follow us on Pinterest";}s:9:"instagram";a:3:{s:7:"profile";a:2:{s:8:"username";s:0:"";s:3:"url";s:0:"";}s:5:"label";s:22:"Follow us on Instagram";s:16:"manual_followers";s:0:"";}s:6:"tumblr";a:3:{s:7:"profile";a:2:{s:8:"username";s:0:"";s:3:"url";s:0:"";}s:5:"label";s:19:"Follow us on Tumblr";s:16:"manual_followers";s:0:"";}s:3:"mix";a:3:{s:7:"profile";a:2:{s:8:"username";s:0:"";s:3:"url";s:0:"";}s:5:"label";s:16:"Follow us on Mix";s:16:"manual_followers";s:0:"";}}s:17:"ss_sf_button_size";s:7:"regular";s:20:"ss_sf_button_columns";s:1:"1";s:22:"ss_sf_button_followers";s:2:"on";s:19:"ss_sf_button_labels";s:2:"on";s:19:"ss_sf_button_scheme";s:7:"default";s:18:"ss_ctt_include_via";s:2:"on";s:19:"ss_ctt_include_link";s:2:"on";s:14:"ss_ctt_related";a:2:{i:0;a:2:{s:8:"username";s:0:"";s:4:"desc";s:0:"";}i:1;a:2:{s:8:"username";s:0:"";s:4:"desc";s:0:"";}}s:20:"ss_ctt_preview_style";s:1:"1";s:19:"ss_twitter_username";s:0:"";s:28:"ss_ss_sidebar_button_spacing";s:0:"";s:25:"ss_ss_sidebar_total_count";s:0:"";s:25:"ss_ss_sidebar_share_count";s:0:"";s:28:"ss_ss_sidebar_hide_on_mobile";s:0:"";s:33:"ss_ss_inline_content_full_content";s:0:"";s:35:"ss_ss_inline_content_hide_on_mobile";s:0:"";s:32:"ss_ss_inline_content_total_count";s:0:"";s:22:"ss_ss_on_media_enabled";s:0:"";s:29:"ss_ss_on_media_hide_on_mobile";s:0:"";s:20:"ss_sf_button_spacing";s:0:"";s:21:"ss_sf_button_vertical";s:0:"";s:21:"ss_sf_total_followers";s:0:"";s:18:"ss_ctt_hide_mobile";s:0:"";s:17:"ss_remove_notices";s:0:"";s:19:"ss_uninstall_delete";s:0:"";s:17:"ss_remove_cookies";s:0:"";s:19:"ss_remove_user_data";s:0:"";}', 'yes');
INSERT INTO `wp5t_options` VALUES
(721, '_site_transient_timeout_ss_facebook_token', '1635604376', 'no'),
(722, '_site_transient_ss_facebook_token', 'a:2:{s:12:"access_token";s:177:"EAACTe4LKiTMBACsgLXKcZAKynAjknRDcpkx0b6LTIvbfZBbCVA5ufycOUEHtqgytAPSfZCat11Eeya1UG3fmqLVawk5Ukw6wRG96HNqLYtO6WZCDHmDMtdfGE9xNrSI5ZCoIHaMepjduVsA848VkSaq9InEjv4x8onVRWdpyXZAgZDZD";s:10:"expires_in";i:1633012376;}', 'no'),
(726, 'socialsnap_homepage_click_share_count_facebook', '1', 'yes'),
(727, 'socialsnap_homepage_share_count_total', '0', 'yes'),
(736, 'um_hidden_admin_notices', 'a:1:{i:0;s:14:"reviews_notice";}', 'yes'),
(774, '_site_transient_timeout_browser_14b1fccaad1217d7baed62f358898c6f', '1628453899', 'no'),
(775, '_site_transient_browser_14b1fccaad1217d7baed62f358898c6f', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"91.0.4472.120";s:8:"platform";s:7:"Android";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:1;}', 'no'),
(831, '_site_transient_timeout_community-events-36268498b4381ef3f3b02f864178ba15', '1628112809', 'no'),
(832, '_site_transient_community-events-36268498b4381ef3f3b02f864178ba15', 'a:4:{s:9:"sandboxed";b:0;s:5:"error";N;s:8:"location";a:1:{s:2:"ip";s:12:"95.168.120.0";}s:6:"events";a:2:{i:0;a:10:{s:4:"type";s:6:"meetup";s:5:"title";s:57:"Watch Party + Discussion group: Introduction to WordPress";s:3:"url";s:68:"https://www.meetup.com/learn-wordpress-discussions/events/279774716/";s:6:"meetup";s:27:"Learn WordPress Discussions";s:10:"meetup_url";s:51:"https://www.meetup.com/learn-wordpress-discussions/";s:4:"date";s:19:"2021-08-04 18:00:00";s:8:"end_date";s:19:"2021-08-04 19:00:00";s:20:"start_unix_timestamp";i:1628125200;s:18:"end_unix_timestamp";i:1628128800;s:8:"location";a:4:{s:8:"location";s:6:"Online";s:7:"country";s:2:"US";s:8:"latitude";d:37.7799987792970028976924368180334568023681640625;s:9:"longitude";d:-122.419998168950002082056016661226749420166015625;}}i:1;a:10:{s:4:"type";s:8:"wordcamp";s:5:"title";s:54:"WordCamp Florianópolis, Santa Catarina &#8211; Brazil";s:3:"url";s:34:"https://floripa.wordcamp.org/2021/";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2021-08-11 19:30:00";s:8:"end_date";s:19:"2021-08-12 00:00:00";s:20:"start_unix_timestamp";i:1628721000;s:18:"end_unix_timestamp";i:1628737200;s:8:"location";a:4:{s:8:"location";s:6:"Online";s:7:"country";s:2:"BR";s:8:"latitude";d:-27.595319799999998622297425754368305206298828125;s:9:"longitude";d:-48.55429269999999775109245092608034610748291015625;}}}}', 'no'),
(799, '_site_transient_timeout_browser_0ae8ca3a081732b73496ea6b5323a362', '1628631905', 'no'),
(800, '_site_transient_browser_0ae8ca3a081732b73496ea6b5323a362', 'a:10:{s:4:"name";s:15:"Samsung Browser";s:7:"version";s:4:"14.0";s:8:"platform";s:7:"Android";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:1;}', 'no'),
(868, '_transient_timeout_feed_9bbd59226dc36b9b26cd43f15694c5c3', '1628114114', 'no'),
(869, '_transient_timeout_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1628114114', 'no'),
(870, '_transient_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1628070914', 'no'),
(926, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1628090026;s:8:"response";a:1:{s:35:"ultimate-member/ultimate-member.php";O:8:"stdClass":13:{s:2:"id";s:29:"w.org/plugins/ultimate-member";s:4:"slug";s:15:"ultimate-member";s:6:"plugin";s:35:"ultimate-member/ultimate-member.php";s:11:"new_version";s:5:"2.2.2";s:3:"url";s:46:"https://wordpress.org/plugins/ultimate-member/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/ultimate-member.2.2.2.zip";s:5:"icons";a:2:{s:2:"2x";s:68:"https://ps.w.org/ultimate-member/assets/icon-256x256.png?rev=2143339";s:2:"1x";s:68:"https://ps.w.org/ultimate-member/assets/icon-128x128.png?rev=2143339";}s:7:"banners";a:2:{s:2:"2x";s:71:"https://ps.w.org/ultimate-member/assets/banner-1544x500.png?rev=2143172";s:2:"1x";s:70:"https://ps.w.org/ultimate-member/assets/banner-772x250.png?rev=2143172";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"5.0";s:6:"tested";s:3:"5.8";s:12:"requires_php";s:3:"5.6";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:19:"akismet/akismet.php";O:8:"stdClass":10:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"4.1.10";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.4.1.10.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"4.6";}s:41:"bp-better-messages/bp-better-messages.php";O:8:"stdClass":10:{s:2:"id";s:32:"w.org/plugins/bp-better-messages";s:4:"slug";s:18:"bp-better-messages";s:6:"plugin";s:41:"bp-better-messages/bp-better-messages.php";s:11:"new_version";s:7:"1.9.9.8";s:3:"url";s:49:"https://wordpress.org/plugins/bp-better-messages/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/bp-better-messages.zip";s:5:"icons";a:1:{s:2:"1x";s:71:"https://ps.w.org/bp-better-messages/assets/icon-128x128.png?rev=1568985";}s:7:"banners";a:1:{s:2:"1x";s:73:"https://ps.w.org/bp-better-messages/assets/banner-772x250.jpg?rev=1571154";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"4.0";}s:24:"buddypress/bp-loader.php";O:8:"stdClass":10:{s:2:"id";s:24:"w.org/plugins/buddypress";s:4:"slug";s:10:"buddypress";s:6:"plugin";s:24:"buddypress/bp-loader.php";s:11:"new_version";s:5:"9.0.0";s:3:"url";s:41:"https://wordpress.org/plugins/buddypress/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/buddypress.9.0.0.zip";s:5:"icons";a:3:{s:2:"2x";s:63:"https://ps.w.org/buddypress/assets/icon-256x256.png?rev=1309232";s:2:"1x";s:54:"https://ps.w.org/buddypress/assets/icon.svg?rev=977480";s:3:"svg";s:54:"https://ps.w.org/buddypress/assets/icon.svg?rev=977480";}s:7:"banners";a:2:{s:2:"2x";s:66:"https://ps.w.org/buddypress/assets/banner-1544x500.png?rev=1854372";s:2:"1x";s:65:"https://ps.w.org/buddypress/assets/banner-772x250.png?rev=1854372";}s:11:"banners_rtl";a:2:{s:2:"2x";s:70:"https://ps.w.org/buddypress/assets/banner-1544x500-rtl.png?rev=1854372";s:2:"1x";s:69:"https://ps.w.org/buddypress/assets/banner-772x250-rtl.png?rev=1854372";}s:8:"requires";s:3:"4.9";}s:9:"hello.php";O:8:"stdClass":10:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"4.6";}s:33:"hide-admin-bar/hide_admin_bar.php";O:8:"stdClass":10:{s:2:"id";s:28:"w.org/plugins/hide-admin-bar";s:4:"slug";s:14:"hide-admin-bar";s:6:"plugin";s:33:"hide-admin-bar/hide_admin_bar.php";s:11:"new_version";s:7:"0.4.0.3";s:3:"url";s:45:"https://wordpress.org/plugins/hide-admin-bar/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/hide-admin-bar.zip";s:5:"icons";a:1:{s:7:"default";s:65:"https://s.w.org/plugins/geopattern-icon/hide-admin-bar_96938b.svg";}s:7:"banners";a:1:{s:2:"1x";s:68:"https://ps.w.org/hide-admin-bar/assets/banner-772x250.png?rev=562610";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"3.1";}s:41:"pen-extra-features/pen-extra-features.php";O:8:"stdClass":10:{s:2:"id";s:32:"w.org/plugins/pen-extra-features";s:4:"slug";s:18:"pen-extra-features";s:6:"plugin";s:41:"pen-extra-features/pen-extra-features.php";s:11:"new_version";s:5:"1.0.7";s:3:"url";s:49:"https://wordpress.org/plugins/pen-extra-features/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/pen-extra-features.zip";s:5:"icons";a:2:{s:2:"2x";s:71:"https://ps.w.org/pen-extra-features/assets/icon-256x256.png?rev=2125146";s:2:"1x";s:71:"https://ps.w.org/pen-extra-features/assets/icon-128x128.png?rev=2125146";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"4.8";}s:25:"socialsnap/socialsnap.php";O:8:"stdClass":10:{s:2:"id";s:24:"w.org/plugins/socialsnap";s:4:"slug";s:10:"socialsnap";s:6:"plugin";s:25:"socialsnap/socialsnap.php";s:11:"new_version";s:6:"1.1.15";s:3:"url";s:41:"https://wordpress.org/plugins/socialsnap/";s:7:"package";s:53:"https://downloads.wordpress.org/plugin/socialsnap.zip";s:5:"icons";a:3:{s:2:"2x";s:63:"https://ps.w.org/socialsnap/assets/icon-256x256.png?rev=1869219";s:2:"1x";s:55:"https://ps.w.org/socialsnap/assets/icon.svg?rev=1869219";s:3:"svg";s:55:"https://ps.w.org/socialsnap/assets/icon.svg?rev=1869219";}s:7:"banners";a:2:{s:2:"2x";s:66:"https://ps.w.org/socialsnap/assets/banner-1544x500.png?rev=2472652";s:2:"1x";s:65:"https://ps.w.org/socialsnap/assets/banner-772x250.png?rev=2472652";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"4.6";}}}', 'no'),
(927, '_site_transient_update_themes', 'O:8:"stdClass":5:{s:12:"last_checked";i:1628090032;s:7:"checked";a:6:{s:3:"pen";s:5:"1.4.3";s:7:"screenr";s:5:"1.2.3";s:5:"skltn";s:5:"0.1.3";s:14:"twentynineteen";s:3:"2.0";s:12:"twentytwenty";s:3:"1.7";s:15:"twentytwentyone";s:3:"1.3";}s:8:"response";a:3:{s:14:"twentynineteen";a:6:{s:5:"theme";s:14:"twentynineteen";s:11:"new_version";s:3:"2.1";s:3:"url";s:44:"https://wordpress.org/themes/twentynineteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip";s:8:"requires";s:5:"4.9.6";s:12:"requires_php";s:5:"5.2.4";}s:12:"twentytwenty";a:6:{s:5:"theme";s:12:"twentytwenty";s:11:"new_version";s:3:"1.8";s:3:"url";s:42:"https://wordpress.org/themes/twentytwenty/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip";s:8:"requires";s:3:"4.7";s:12:"requires_php";s:5:"5.2.4";}s:15:"twentytwentyone";a:6:{s:5:"theme";s:15:"twentytwentyone";s:11:"new_version";s:3:"1.4";s:3:"url";s:45:"https://wordpress.org/themes/twentytwentyone/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip";s:8:"requires";s:3:"5.3";s:12:"requires_php";s:3:"5.6";}}s:9:"no_update";a:3:{s:3:"pen";a:6:{s:5:"theme";s:3:"pen";s:11:"new_version";s:5:"1.4.3";s:3:"url";s:33:"https://wordpress.org/themes/pen/";s:7:"package";s:51:"https://downloads.wordpress.org/theme/pen.1.4.3.zip";s:8:"requires";s:3:"4.8";s:12:"requires_php";s:3:"5.6";}s:7:"screenr";a:6:{s:5:"theme";s:7:"screenr";s:11:"new_version";s:5:"1.2.3";s:3:"url";s:37:"https://wordpress.org/themes/screenr/";s:7:"package";s:55:"https://downloads.wordpress.org/theme/screenr.1.2.3.zip";s:8:"requires";b:0;s:12:"requires_php";s:3:"5.6";}s:5:"skltn";a:6:{s:5:"theme";s:5:"skltn";s:11:"new_version";s:5:"0.1.3";s:3:"url";s:35:"https://wordpress.org/themes/skltn/";s:7:"package";s:53:"https://downloads.wordpress.org/theme/skltn.0.1.3.zip";s:8:"requires";s:3:"5.0";s:12:"requires_php";s:3:"5.6";}}s:12:"translations";a:0:{}}', 'no'),
(846, 'auto_update_plugins', 'a:7:{i:0;s:41:"pen-extra-features/pen-extra-features.php";i:1;s:25:"socialsnap/socialsnap.php";i:2;s:33:"hide-admin-bar/hide_admin_bar.php";i:3;s:9:"hello.php";i:4;s:24:"buddypress/bp-loader.php";i:5;s:41:"bp-better-messages/bp-better-messages.php";i:6;s:19:"akismet/akismet.php";}', 'no'),
(485, 'um_cache_userdata_3', 'a:50:{s:2:"ID";i:3;s:10:"user_login";s:22:"Rimke i brka i krepato";s:9:"user_pass";s:34:"$P$BWQhSc43o908lOE1i0WWSRgbixX1tI.";s:13:"user_nicename";s:22:"rimke-i-brka-i-krepato";s:10:"user_email";s:31:"frvcerfrvrwr@ewedq3xqe.brutalci";s:8:"user_url";s:0:"";s:15:"user_registered";s:19:"2021-06-18 09:52:18";s:11:"user_status";s:1:"0";s:12:"display_name";s:16:"Vt3gf3r2r Rc3cr2";s:10:"subscriber";b:1;s:8:"wp_roles";s:10:"subscriber";s:4:"read";b:1;s:6:"filter";N;s:16:"\0WP_User\0site_id";i:1;s:8:"nickname";s:22:"Rimke i brka i krepato";s:10:"first_name";s:9:"Vt3gf3r2r";s:9:"last_name";s:6:"Rc3cr2";s:11:"description";s:0:"";s:12:"rich_editing";s:4:"true";s:19:"syntax_highlighting";s:4:"true";s:17:"comment_shortcuts";s:5:"false";s:11:"admin_color";s:9:"ectoplasm";s:7:"use_ssl";s:1:"0";s:20:"show_admin_bar_front";s:4:"true";s:6:"locale";s:0:"";s:24:"um_member_directory_data";s:137:"a:5:{s:14:"account_status";s:8:"approved";s:15:"hide_in_members";b:0;s:13:"profile_photo";b:0;s:11:"cover_photo";b:0;s:8:"verified";b:0;}";s:35:"um_user_profile_url_slug_user_login";s:22:"Rimke+i+brka+i+krepato";s:9:"full_name";s:16:"vt3gf3r2r rc3cr2";s:14:"account_status";s:8:"approved";s:25:"synced_gravatar_hashed_id";s:32:"ffdd6503dea6e80179f6695b011ed396";s:14:"_um_last_login";s:10:"1624010115";s:24:"um_account_secure_fields";s:310:"a:4:{s:7:"general";a:4:{i:0;s:10:"user_login";i:1;s:10:"first_name";i:2;s:9:"last_name";i:3;s:10:"user_email";}s:8:"password";a:1:{i:0;s:13:"user_password";}s:7:"privacy";a:3:{i:0;s:15:"profile_privacy";i:1;s:15:"profile_noindex";i:2;s:15:"hide_in_members";}s:6:"delete";a:1:{i:0;s:20:"single_user_password";}}";s:19:"account_status_name";s:8:"Approved";s:4:"role";s:10:"subscriber";s:5:"roles";a:1:{i:0;s:10:"subscriber";}s:18:"can_access_wpadmin";i:0;s:20:"can_not_see_adminbar";i:1;s:17:"can_edit_everyone";i:0;s:19:"can_delete_everyone";i:0;s:16:"can_edit_profile";i:1;s:18:"can_delete_profile";i:1;s:11:"after_login";s:16:"redirect_profile";s:12:"after_logout";s:13:"redirect_home";s:16:"default_homepage";i:1;s:12:"can_view_all";i:1;s:24:"can_make_private_profile";i:0;s:26:"can_access_private_profile";i:0;s:6:"status";s:8:"approved";s:16:"auto_approve_act";s:16:"redirect_profile";s:11:"super_admin";i:0;}', 'no'),
(929, '_site_transient_timeout_available_translations', '1628100851', 'no'),
(556, 'bp-pages', 'a:5:{s:7:"members";i:50;s:8:"activity";i:133;s:6:"groups";i:151;s:8:"register";i:131;s:8:"activate";i:178;}', 'yes'),
(931, 'um_cache_userdata_5', 'a:51:{s:2:"ID";i:5;s:10:"user_login";s:8:"marislea";s:9:"user_pass";s:34:"$P$ByIgOH/eYawKUOJJWc300YFMMkx1K21";s:13:"user_nicename";s:8:"marislea";s:10:"user_email";s:27:"prljava.roletna@outlook.com";s:8:"user_url";s:15:"http://marislea";s:15:"user_registered";s:19:"2021-08-04 10:08:25";s:11:"user_status";s:1:"0";s:12:"display_name";s:22:"Marislea Fufondrupovic";s:10:"subscriber";b:1;s:8:"wp_roles";s:10:"subscriber";s:4:"read";b:1;s:6:"filter";N;s:16:"\0WP_User\0site_id";i:1;s:8:"nickname";s:22:"Marislea Fufondrupovic";s:10:"first_name";s:8:"Marislea";s:9:"last_name";s:13:"Fufondrupovic";s:11:"description";s:0:"";s:12:"rich_editing";s:4:"true";s:19:"syntax_highlighting";s:4:"true";s:17:"comment_shortcuts";s:5:"false";s:11:"admin_color";s:5:"fresh";s:7:"use_ssl";s:1:"0";s:20:"show_admin_bar_front";s:4:"true";s:6:"locale";s:0:"";s:24:"um_member_directory_data";s:137:"a:5:{s:14:"account_status";s:8:"approved";s:15:"hide_in_members";b:0;s:13:"profile_photo";b:0;s:11:"cover_photo";b:0;s:8:"verified";b:0;}";s:35:"um_user_profile_url_slug_user_login";s:8:"marislea";s:9:"full_name";s:22:"marislea fufondrupovic";s:14:"account_status";s:8:"approved";s:25:"synced_gravatar_hashed_id";s:32:"273e7642aaf883126423ead1ed68e998";s:14:"_um_last_login";s:10:"1628071825";s:18:"bpbm_last_activity";s:19:"2021-08-04 10:17:04";s:24:"um_account_secure_fields";s:310:"a:4:{s:7:"general";a:4:{i:0;s:10:"user_login";i:1;s:10:"first_name";i:2;s:9:"last_name";i:3;s:10:"user_email";}s:8:"password";a:1:{i:0;s:13:"user_password";}s:7:"privacy";a:3:{i:0;s:15:"profile_privacy";i:1;s:15:"profile_noindex";i:2;s:15:"hide_in_members";}s:6:"delete";a:1:{i:0;s:20:"single_user_password";}}";s:19:"account_status_name";s:8:"Approved";s:4:"role";s:10:"subscriber";s:5:"roles";a:1:{i:0;s:10:"subscriber";}s:18:"can_access_wpadmin";i:0;s:20:"can_not_see_adminbar";i:1;s:17:"can_edit_everyone";i:0;s:19:"can_delete_everyone";i:0;s:16:"can_edit_profile";i:1;s:18:"can_delete_profile";i:1;s:11:"after_login";s:16:"redirect_profile";s:12:"after_logout";s:13:"redirect_home";s:16:"default_homepage";i:1;s:12:"can_view_all";i:1;s:24:"can_make_private_profile";i:0;s:26:"can_access_private_profile";i:0;s:6:"status";s:8:"approved";s:16:"auto_approve_act";s:16:"redirect_profile";s:11:"super_admin";i:0;}', 'no'),
(675, '_site_transient_timeout_php_check_3dbf48b9658abaee82651209c2ca7be3', '1628432298', 'no'),
(676, '_site_transient_php_check_3dbf48b9658abaee82651209c2ca7be3', 'a:5:{s:19:"recommended_version";s:3:"7.4";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:1;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}', 'no'),
(804, '_site_transient_timeout_community-events-904af2b52972cd28ca7667f168f067ef', '1628070458', 'no'),
(805, '_site_transient_community-events-904af2b52972cd28ca7667f168f067ef', 'a:4:{s:9:"sandboxed";b:0;s:5:"error";N;s:8:"location";a:1:{s:2:"ip";s:12:"95.168.121.0";}s:6:"events";a:2:{i:0;a:10:{s:4:"type";s:6:"meetup";s:5:"title";s:57:"Watch Party + Discussion group: Introduction to WordPress";s:3:"url";s:68:"https://www.meetup.com/learn-wordpress-discussions/events/279774716/";s:6:"meetup";s:27:"Learn WordPress Discussions";s:10:"meetup_url";s:51:"https://www.meetup.com/learn-wordpress-discussions/";s:4:"date";s:19:"2021-08-04 18:00:00";s:8:"end_date";s:19:"2021-08-04 19:00:00";s:20:"start_unix_timestamp";i:1628125200;s:18:"end_unix_timestamp";i:1628128800;s:8:"location";a:4:{s:8:"location";s:6:"Online";s:7:"country";s:2:"US";s:8:"latitude";d:37.7799987792970028976924368180334568023681640625;s:9:"longitude";d:-122.419998168950002082056016661226749420166015625;}}i:1;a:10:{s:4:"type";s:8:"wordcamp";s:5:"title";s:54:"WordCamp Florianópolis, Santa Catarina &#8211; Brazil";s:3:"url";s:34:"https://floripa.wordcamp.org/2021/";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2021-08-11 19:30:00";s:8:"end_date";s:19:"2021-08-12 00:00:00";s:20:"start_unix_timestamp";i:1628721000;s:18:"end_unix_timestamp";i:1628737200;s:8:"location";a:4:{s:8:"location";s:6:"Online";s:7:"country";s:2:"BR";s:8:"latitude";d:-27.595319799999998622297425754368305206298828125;s:9:"longitude";d:-48.55429269999999775109245092608034610748291015625;}}}}', 'no'),
(677, '_site_transient_timeout_browser_fdfe3e4a4d88e663b227d19e6aadc5f4', '1628432368', 'no'),
(699, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:60:"https://downloads.wordpress.org/release/hr/wordpress-5.8.zip";s:6:"locale";s:2:"hr";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:60:"https://downloads.wordpress.org/release/hr/wordpress-5.8.zip";s:10:"no_content";s:0:"";s:11:"new_bundled";s:0:"";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:3:"5.8";s:7:"version";s:3:"5.8";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.6";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-5.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-5.8.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-5.8-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-5.8-new-bundled.zip";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:3:"5.8";s:7:"version";s:3:"5.8";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.6";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-5.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-5.8.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-5.8-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-5.8-new-bundled.zip";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:3:"5.8";s:7:"version";s:3:"5.8";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.6";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1628090004;s:15:"version_checked";s:5:"5.7.2";s:12:"translations";a:0:{}}', 'no'),
(530, 'hide-loggedout-adminbar', '', 'yes'),
(531, 'bp-disable-avatar-uploads', '', 'yes'),
(532, 'bp-disable-cover-image-uploads', '', 'yes'),
(533, 'bp-disable-group-avatar-uploads', '', 'yes'),
(534, 'bp-disable-group-cover-image-uploads', '', 'yes'),
(535, 'bp-disable-account-deletion', '', 'yes'),
(536, 'bp-disable-blogforum-comments', '1', 'yes'),
(537, '_bp_theme_package_id', 'nouveau', 'yes'),
(538, 'bp-emails-unsubscribe-salt', 'ZCA3VGohPXRJKDFrPHZFSzoqTTsvRUhpbyo/fiM2QXU7MHU1W1ZWeytBODl2NzNTcj9aKXttQExUMj10TVQ5JA==', 'yes'),
(539, 'bp_restrict_group_creation', '', 'yes'),
(540, '_bp_enable_akismet', '1', 'yes'),
(541, '_bp_enable_heartbeat_refresh', '1', 'yes'),
(542, '_bp_retain_bp_default', '', 'yes'),
(543, '_bp_ignore_deprecated_code', '1', 'yes'),
(544, 'widget_bp_core_login_widget', 'a:5:{i:1;a:0:{}s:12:"_multiwidget";i:1;i:3;a:0:{}i:5;a:0:{}i:6;a:0:{}}', 'yes'),
(545, 'widget_bp_core_members_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(546, 'widget_bp_core_whos_online_widget', 'a:4:{i:1;a:0:{}s:12:"_multiwidget";i:1;i:3;a:0:{}i:5;a:0:{}}', 'yes'),
(547, 'widget_bp_core_recently_active_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(548, 'widget_bp_groups_widget', 'a:4:{i:1;a:0:{}s:12:"_multiwidget";i:1;i:3;a:0:{}i:5;a:0:{}}', 'yes'),
(925, 'core_updater.lock', '1628089998', 'no'),
(557, '_bp_db_version', '12850', 'yes'),
(554, 'widget_bp_nouveau_sidebar_object_nav_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(498, 'fs_api_cache', 'a:6:{s:26:"get:/v1/users/4969661.json";O:8:"stdClass":3:{s:6:"result";O:8:"stdClass":16:{s:15:"default_card_id";N;s:5:"gross";i:0;s:6:"source";i:0;s:13:"last_login_at";N;s:5:"email";s:27:"renato.grubesic08@gmail.com";s:5:"first";s:6:"renato";s:4:"last";s:0:"";s:7:"picture";N;s:2:"ip";s:14:"83.179.206.118";s:11:"is_verified";b:0;s:10:"secret_key";s:32:"sk_OABa{&$1QdMHnPf_%M7Gs6v=_39ZR";s:10:"public_key";s:32:"pk_699990e31c3b8a3d10777c9df45fd";s:2:"id";s:7:"4969661";s:7:"created";s:19:"2021-06-18 10:00:31";s:7:"updated";N;s:11:"customer_id";N;}s:7:"created";i:1624010431;s:9:"timestamp";i:1624096831;}s:29:"get:/v1/installs/7608652.json";O:8:"stdClass":3:{s:6:"result";O:8:"stdClass":33:{s:7:"site_id";s:9:"100349995";s:9:"plugin_id";s:4:"1557";s:7:"user_id";s:7:"4969661";s:3:"url";s:18:"http://renatogr.cf";s:5:"title";s:6:"Renato";s:7:"version";s:9:"1.9.8.143";s:7:"plan_id";s:4:"2621";s:10:"license_id";N;s:13:"trial_plan_id";N;s:10:"trial_ends";N;s:15:"subscription_id";N;s:5:"gross";i:0;s:12:"country_code";s:2:"hr";s:8:"language";s:2:"hr";s:7:"charset";s:5:"UTF-8";s:16:"platform_version";s:5:"5.7.2";s:11:"sdk_version";s:5:"2.4.2";s:28:"programming_language_version";s:5:"7.4.8";s:9:"is_active";b:1;s:15:"is_disconnected";b:0;s:10:"is_premium";b:0;s:14:"is_uninstalled";b:0;s:9:"is_locked";b:0;s:6:"source";i:0;s:8:"upgraded";N;s:12:"last_seen_at";s:19:"2021-06-18 10:00:34";s:26:"last_served_update_version";N;s:10:"secret_key";s:32:"sk_j}So_zSH=>#q&$SADm]ng=1-%f;=l";s:10:"public_key";s:32:"pk_77b0dbca81dd36ec7701768e7bd0f";s:2:"id";s:7:"7608652";s:7:"created";s:19:"2021-06-18 10:00:32";s:7:"updated";N;s:7:"is_beta";b:0;}s:7:"created";i:1624010431;s:9:"timestamp";i:1624096831;}s:45:"get:/v1/users/4969661/plugins/1557/plans.json";O:8:"stdClass":3:{s:6:"result";O:8:"stdClass":1:{s:5:"plans";a:4:{i:0;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"1557";s:4:"name";s:4:"free";s:5:"title";s:4:"Free";s:11:"description";N;s:17:"is_free_localhost";b:1;s:17:"is_block_features";b:1;s:12:"license_type";i:0;s:16:"is_https_support";b:0;s:12:"trial_period";N;s:23:"is_require_subscription";b:0;s:10:"support_kb";s:40:"https://www.wordplus.org/knowledge-base/";s:13:"support_forum";s:57:"https://www.wordplus.org/forums/forum/bp-better-messages/";s:13:"support_email";s:28:"support@bpbettermessages.com";s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";b:0;s:11:"is_featured";b:0;s:2:"id";s:4:"2621";s:7:"updated";s:19:"2021-04-14 06:22:48";s:7:"created";s:19:"2018-02-27 03:10:18";s:22:"\0FS_Entity\0_is_updated";b:0;}i:1;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"1557";s:4:"name";s:9:"websocket";s:5:"title";s:9:"WebSocket";s:11:"description";N;s:17:"is_free_localhost";b:0;s:17:"is_block_features";b:1;s:12:"license_type";i:0;s:16:"is_https_support";b:0;s:12:"trial_period";i:3;s:23:"is_require_subscription";b:1;s:10:"support_kb";s:40:"https://www.wordplus.org/knowledge-base/";s:13:"support_forum";s:57:"https://www.wordplus.org/forums/forum/bp-better-messages/";s:13:"support_email";s:28:"support@bpbettermessages.com";s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";b:0;s:11:"is_featured";b:1;s:2:"id";s:4:"2547";s:7:"updated";s:19:"2021-04-14 17:12:54";s:7:"created";s:19:"2018-02-15 14:59:23";s:22:"\0FS_Entity\0_is_updated";b:0;}i:2;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"1557";s:4:"name";s:19:"websocketselfhosted";s:5:"title";s:21:"Websocket Self Hosted";s:11:"description";s:0:"";s:17:"is_free_localhost";b:0;s:17:"is_block_features";b:1;s:12:"license_type";i:0;s:16:"is_https_support";b:0;s:12:"trial_period";N;s:23:"is_require_subscription";b:0;s:10:"support_kb";s:40:"https://www.wordplus.org/knowledge-base/";s:13:"support_forum";s:57:"https://www.wordplus.org/forums/forum/bp-better-messages/";s:13:"support_email";s:28:"support@bpbettermessages.com";s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";b:0;s:11:"is_featured";b:0;s:2:"id";s:5:"12309";s:7:"updated";s:19:"2021-07-07 07:19:32";s:7:"created";s:19:"2021-01-02 11:04:54";s:22:"\0FS_Entity\0_is_updated";b:0;}i:3;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:4:"1557";s:4:"name";s:9:"armatis17";s:5:"title";s:28:"Armatis 17 Sites Self-Hosted";s:11:"description";N;s:17:"is_free_localhost";b:0;s:17:"is_block_features";b:1;s:12:"license_type";i:0;s:16:"is_https_support";b:0;s:12:"trial_period";N;s:23:"is_require_subscription";b:0;s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";b:0;s:11:"is_featured";b:0;s:2:"id";s:5:"13890";s:7:"updated";s:19:"2021-05-18 20:02:40";s:7:"created";s:19:"2021-05-18 13:41:33";s:22:"\0FS_Entity\0_is_updated";b:0;}}}s:7:"created";i:1628027020;s:9:"timestamp";i:1628113420;}s:65:"get:/v1/users/4969661/plugins/1557/licenses.json?is_enriched=true";O:8:"stdClass":3:{s:6:"result";O:8:"stdClass":1:{s:8:"licenses";a:0:{}}s:7:"created";i:1628027020;s:9:"timestamp";i:1628113420;}s:59:"get:/v1/installs/7608652/addons.json?enriched=true&count=50";O:8:"stdClass":3:{s:6:"result";O:8:"stdClass":1:{s:7:"plugins";a:2:{i:0;O:8:"stdClass":33:{s:16:"parent_plugin_id";s:4:"1557";s:12:"developer_id";s:4:"1740";s:8:"store_id";s:3:"692";s:10:"install_id";s:7:"7720304";s:4:"slug";s:33:"bp-better-messages-voice-messages";s:5:"title";s:14:"Voice Messages";s:11:"environment";i:0;s:4:"icon";N;s:15:"default_plan_id";s:5:"14467";s:5:"plans";i:14467;s:8:"features";N;s:17:"money_back_period";i:7;s:13:"refund_policy";s:6:"strict";s:24:"annual_renewals_discount";N;s:22:"renewals_discount_type";s:0:"";s:11:"is_released";b:1;s:15:"is_sdk_required";b:1;s:18:"is_pricing_visible";b:1;s:19:"is_wp_org_compliant";b:0;s:6:"is_off";b:0;s:24:"is_only_for_new_installs";b:0;s:14:"installs_limit";N;s:19:"free_releases_count";i:0;s:22:"premium_releases_count";i:4;s:17:"accepted_payments";i:0;s:7:"plan_id";s:1:"0";s:4:"type";s:6:"plugin";s:10:"public_key";s:32:"pk_745a013c686d96e42b595ae8af577";s:2:"id";s:4:"8659";s:7:"created";s:19:"2021-07-05 16:03:13";s:7:"updated";s:19:"2021-08-02 19:45:40";s:4:"info";O:8:"stdClass":13:{s:9:"plugin_id";s:4:"8659";s:3:"url";N;s:11:"description";s:70:"Enable your users to send voice messages additionally to text messages";s:17:"short_description";s:70:"Enable your users to send voice messages additionally to text messages";s:10:"banner_url";s:61:"//s3-us-west-2.amazonaws.com/freemius/plugins/8659/banner.png";s:15:"card_banner_url";s:66:"//s3-us-west-2.amazonaws.com/freemius/plugins/8659/card_banner.png";s:15:"selling_point_0";s:0:"";s:15:"selling_point_1";s:0:"";s:15:"selling_point_2";s:0:"";s:11:"screenshots";O:8:"stdClass":3:{s:12:"screenshot_0";s:68:"//s3-us-west-2.amazonaws.com/freemius/plugins/8659/screenshots/0.png";s:12:"screenshot_1";s:68:"//s3-us-west-2.amazonaws.com/freemius/plugins/8659/screenshots/1.png";s:12:"screenshot_2";s:68:"//s3-us-west-2.amazonaws.com/freemius/plugins/8659/screenshots/2.png";}s:2:"id";s:4:"2293";s:7:"created";s:19:"2021-07-05 16:22:46";s:7:"updated";s:19:"2021-07-09 13:08:04";}s:12:"premium_slug";s:33:"bp-better-messages-voice-messages";}i:1;O:8:"stdClass":33:{s:16:"parent_plugin_id";s:4:"1557";s:12:"developer_id";s:4:"1740";s:8:"store_id";s:3:"692";s:10:"install_id";s:7:"7757517";s:4:"slug";s:29:"bp-better-messages-wc-vendors";s:5:"title";s:22:"WC Vendors Integration";s:11:"environment";i:0;s:4:"icon";N;s:15:"default_plan_id";s:5:"14521";s:5:"plans";i:14521;s:8:"features";N;s:17:"money_back_period";N;s:13:"refund_policy";N;s:24:"annual_renewals_discount";N;s:22:"renewals_discount_type";s:0:"";s:11:"is_released";b:1;s:15:"is_sdk_required";b:1;s:18:"is_pricing_visible";b:0;s:19:"is_wp_org_compliant";b:0;s:6:"is_off";b:0;s:24:"is_only_for_new_installs";b:0;s:14:"installs_limit";N;s:19:"free_releases_count";i:3;s:22:"premium_releases_count";i:0;s:17:"accepted_payments";i:0;s:7:"plan_id";s:1:"0";s:4:"type";s:6:"plugin";s:10:"public_key";s:32:"pk_81572487ef5c67b080edb79788813";s:2:"id";s:4:"8691";s:7:"created";s:19:"2021-07-10 14:54:00";s:7:"updated";s:19:"2021-08-01 22:55:23";s:4:"info";O:8:"stdClass":13:{s:9:"plugin_id";s:4:"8691";s:3:"url";N;s:11:"description";s:224:"<p>Integration with <a href="https://www.wordplus.org/wcvendors" target="_blank">WC Vendors</a> plugin.</p>\n\n<p>Allows connect sellers and buyers with private messaging system</p>\n\nhttps://www.youtube.com/watch?v=Z3h1UQ03wPE";s:17:"short_description";s:34:"Integration with WC Vendors plugin";s:10:"banner_url";N;s:15:"card_banner_url";s:66:"//s3-us-west-2.amazonaws.com/freemius/plugins/8691/card_banner.png";s:15:"selling_point_0";s:0:"";s:15:"selling_point_1";s:0:"";s:15:"selling_point_2";s:0:"";s:11:"screenshots";O:8:"stdClass":3:{s:12:"screenshot_0";s:68:"//s3-us-west-2.amazonaws.com/freemius/plugins/8691/screenshots/0.png";s:12:"screenshot_1";s:68:"//s3-us-west-2.amazonaws.com/freemius/plugins/8691/screenshots/1.png";s:12:"screenshot_2";s:68:"//s3-us-west-2.amazonaws.com/freemius/plugins/8691/screenshots/2.png";}s:2:"id";s:4:"2327";s:7:"created";s:19:"2021-07-30 09:34:28";s:7:"updated";s:19:"2021-07-30 16:17:07";}s:12:"premium_slug";s:37:"bp-better-messages-wc-vendors-premium";}}}s:7:"created";i:1628027099;s:9:"timestamp";i:1628113499;}s:47:"get:/v1/users/4969661/licenses.json?type=active";O:8:"stdClass":3:{s:6:"result";O:8:"stdClass":1:{s:8:"licenses";a:0:{}}s:7:"created";i:1628027099;s:9:"timestamp";i:1628113499;}}', 'no'),
(502, 'bp_better_messages_db_version', '1.0', 'yes'),
(504, '_site_transient_timeout_locked_1', '1939370433', 'no'),
(505, '_site_transient_locked_1', '1', 'no'),
(678, '_site_transient_browser_fdfe3e4a4d88e663b227d19e6aadc5f4', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"92.0.4515.107";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(692, 'theme_mods_pen', 'a:9:{s:11:"pen_version";b:0;s:18:"pen_date_installed";i:1627827604;s:18:"custom_css_post_id";i:-1;s:18:"pen_date_activated";i:1627827687;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}s:16:"pen_preset_color";s:8:"preset_7";s:15:"pen_preset_font";s:8:"preset_1";s:9:"pen_phone";a:1:{s:8:"preset_1";s:0:"";}s:33:"pen_background_image_site_dynamic";a:1:{s:8:"preset_1";s:14:"featured_image";}}', 'yes'),
(922, 'auto_updater.lock', '1628089997', 'no'),
(509, 'bp-better-chat-settings', 'a:94:{s:9:"mechanism";s:4:"ajax";s:8:"template";s:8:"standard";s:15:"thread_interval";s:1:"3";s:13:"site_interval";s:2:"10";s:15:"messagesPerPage";s:2:"20";s:18:"attachmentsFormats";a:0:{}s:20:"attachmentsRetention";s:3:"365";s:17:"attachmentsEnable";s:1:"0";s:15:"attachmentsHide";s:1:"1";s:21:"attachmentsRandomName";s:1:"1";s:18:"attachmentsMaxSize";s:2:"10";s:15:"miniChatsEnable";s:1:"0";s:14:"searchAllUsers";s:1:"0";s:14:"disableSubject";s:1:"0";s:20:"disableEnterForTouch";s:1:"1";s:16:"disableTapToOpen";s:1:"0";s:14:"autoFullScreen";s:1:"0";s:11:"mobilePopup";s:1:"0";s:16:"mobileFullScreen";s:1:"1";s:8:"chatPage";s:1:"0";s:14:"messagesStatus";s:1:"0";s:19:"allowDeleteMessages";s:1:"0";s:24:"disableDeleteThreadCheck";s:1:"0";s:9:"fastStart";s:1:"1";s:17:"miniThreadsEnable";s:1:"0";s:17:"miniFriendsEnable";s:1:"0";s:11:"friendsMode";s:1:"0";s:16:"singleThreadMode";s:1:"0";s:24:"redirectToExistingThread";s:1:"0";s:19:"disableGroupThreads";s:1:"0";s:20:"replaceStandardEmail";s:1:"0";s:12:"oEmbedEnable";s:1:"1";s:22:"disableEnterForDesktop";s:1:"0";s:14:"rateLimitReply";a:4:{s:6:"editor";a:2:{s:5:"value";s:1:"0";s:4:"type";s:4:"hour";}s:6:"author";a:2:{s:5:"value";s:1:"0";s:4:"type";s:4:"hour";}s:11:"contributor";a:2:{s:5:"value";s:1:"0";s:4:"type";s:4:"hour";}s:10:"subscriber";a:2:{s:5:"value";s:1:"0";s:4:"type";s:4:"hour";}}s:21:"rateLimitReplyMessage";s:34:"Your limit for replies is exceeded";s:18:"restrictNewThreads";a:0:{}s:25:"restrictNewThreadsMessage";s:40:"You are not allowed to start new threads";s:39:"restrictNewThreadsRemoveNewThreadButton";s:1:"0";s:18:"restrictNewReplies";a:0:{}s:25:"restrictNewRepliesMessage";s:28:"You are not allowed to reply";s:20:"restrictViewMessages";a:0:{}s:27:"restrictViewMessagesMessage";s:14:"Message hidden";s:10:"videoCalls";s:1:"0";s:10:"audioCalls";s:1:"0";s:11:"blockScroll";s:1:"1";s:14:"userListButton";s:1:"0";s:12:"combinedView";s:1:"0";s:23:"enablePushNotifications";s:1:"0";s:12:"colorGeneral";s:7:"#21759b";s:17:"mobileEmojiEnable";s:1:"0";s:17:"encryptionEnabled";s:1:"0";s:12:"stipopApiKey";s:0:"";s:14:"stipopLanguage";s:2:"en";s:16:"allowMuteThreads";s:1:"1";s:16:"callsRevertIcons";s:1:"0";s:20:"callRequestTimeLimit";i:30;s:25:"offlineCallsNotifications";s:1:"0";s:17:"callsLimitFriends";s:1:"0";s:19:"stopBPNotifications";s:1:"0";s:23:"restrictThreadsDeleting";s:1:"0";s:23:"disableFavoriteMessages";s:1:"0";s:13:"disableSearch";s:1:"0";s:19:"disableUserSettings";s:1:"0";s:16:"disableNewThread";s:1:"0";s:16:"profileVideoCall";s:1:"0";s:16:"profileAudioCall";s:1:"0";s:17:"miniChatAudioCall";s:1:"0";s:17:"miniChatVideoCall";s:1:"0";s:18:"disableUsersSearch";s:1:"0";s:17:"fixedHeaderHeight";i:0;s:17:"miniWindowsHeight";i:426;s:15:"miniChatsHeight";i:426;s:18:"rateLimitNewThread";i:0;s:21:"notificationsInterval";i:15;s:25:"disableOnSiteNotification";s:1:"0";s:17:"allowSoundDisable";s:1:"1";s:12:"enableGroups";s:1:"0";s:16:"enableMiniGroups";s:1:"0";s:15:"allowGroupLeave";s:1:"0";s:11:"giphyApiKey";s:0:"";s:18:"giphyContentRating";s:1:"g";s:13:"giphyLanguage";s:2:"en";s:13:"enableReplies";s:1:"0";s:14:"messagesHeight";i:650;s:17:"notificationSound";i:100;s:9:"sentSound";i:50;s:9:"callSound";i:100;s:12:"modernLayout";s:4:"left";s:17:"allowEditMessages";s:1:"0";s:15:"enableNiceLinks";s:1:"1";s:18:"modernBorderRadius";i:2;s:12:"userStatuses";s:1:"0";s:15:"myProfileButton";s:1:"1";s:18:"titleNotifications";s:1:"1";}', 'yes'),
(512, 'new_admin_email', 'renato.grubesic08@gmail.com', 'yes'),
(549, 'widget_bp_messages_sitewide_notices_widget', '', 'yes'),
(555, 'bp-active-components', 'a:9:{s:8:"xprofile";s:1:"1";s:8:"settings";s:1:"1";s:7:"friends";s:1:"1";s:8:"messages";s:1:"1";s:8:"activity";s:1:"1";s:13:"notifications";s:1:"1";s:6:"groups";s:1:"1";s:5:"blogs";s:1:"1";s:7:"members";s:1:"1";}', 'yes'),
(761, '_site_transient_timeout_browser_3a4bbc5f279d7e62fb470a7ab3d0cf61', '1628448852', 'no'),
(762, '_site_transient_browser_3a4bbc5f279d7e62fb470a7ab3d0cf61', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"42.0.2311.111";s:8:"platform";s:7:"Android";s:10:"update_url";s:0:"";s:7:"img_src";s:0:"";s:11:"img_src_ssl";s:0:"";s:15:"current_version";s:0:"";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:1;}', 'no'),
(712, 'socialsnap_version', '1.1.15', 'yes'),
(713, 'socialsnap_activated', 'a:1:{s:4:"lite";i:1627828316;}', 'yes'),
(559, 'widget_bp_latest_activities', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(568, 'widget_bp_core_friends_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(923, '_site_transient_timeout_theme_roots', '1628091798', 'no'),
(924, '_site_transient_theme_roots', 'a:6:{s:3:"pen";s:7:"/themes";s:7:"screenr";s:7:"/themes";s:5:"skltn";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";s:12:"twentytwenty";s:7:"/themes";s:15:"twentytwentyone";s:7:"/themes";}', 'no'),
(918, 'um_cache_userdata_4', 'a:48:{s:2:"ID";i:4;s:10:"user_login";s:21:"MarisleaFufondrupovic";s:9:"user_pass";s:34:"$P$BFyjMll65CtFkW4Au4zcuxP3hmx3WC.";s:13:"user_nicename";s:21:"marisleafufondrupovic";s:10:"user_email";s:27:"renato.grubesic@hotmail.com";s:8:"user_url";s:0:"";s:15:"user_registered";s:19:"2021-08-04 10:03:01";s:11:"user_status";s:1:"0";s:12:"display_name";s:23:"Marislea Fufondrupović";s:10:"subscriber";b:1;s:8:"wp_roles";s:10:"subscriber";s:4:"read";b:1;s:6:"filter";N;s:16:"\0WP_User\0site_id";i:1;s:8:"nickname";s:23:"Marislea Fufondrupović";s:10:"first_name";s:8:"Marislea";s:9:"last_name";s:14:"Fufondrupović";s:11:"description";s:0:"";s:12:"rich_editing";s:4:"true";s:19:"syntax_highlighting";s:4:"true";s:17:"comment_shortcuts";s:5:"false";s:11:"admin_color";s:5:"fresh";s:7:"use_ssl";s:1:"0";s:20:"show_admin_bar_front";s:4:"true";s:6:"locale";s:0:"";s:25:"synced_gravatar_hashed_id";s:32:"b01517ee53396bd2524fe66bb643fed8";s:24:"um_member_directory_data";s:137:"a:5:{s:14:"account_status";s:8:"approved";s:15:"hide_in_members";b:0;s:13:"profile_photo";b:0;s:11:"cover_photo";b:0;s:8:"verified";b:0;}";s:29:"bp_xprofile_visibility_levels";s:23:"a:1:{i:1;s:6:"public";}";s:35:"um_user_profile_url_slug_user_login";s:21:"MarisleaFufondrupovic";s:14:"account_status";s:8:"approved";s:19:"account_status_name";s:8:"Approved";s:4:"role";s:10:"subscriber";s:5:"roles";a:1:{i:0;s:10:"subscriber";}s:18:"can_access_wpadmin";i:0;s:20:"can_not_see_adminbar";i:1;s:17:"can_edit_everyone";i:0;s:19:"can_delete_everyone";i:0;s:16:"can_edit_profile";i:1;s:18:"can_delete_profile";i:1;s:11:"after_login";s:16:"redirect_profile";s:12:"after_logout";s:13:"redirect_home";s:16:"default_homepage";i:1;s:12:"can_view_all";i:1;s:24:"can_make_private_profile";i:0;s:26:"can_access_private_profile";i:0;s:6:"status";s:8:"approved";s:16:"auto_approve_act";s:16:"redirect_profile";s:11:"super_admin";i:0;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_postmeta`
--

CREATE TABLE `wp5t_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp5t_postmeta`
--

INSERT INTO `wp5t_postmeta` VALUES
(24, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 17, '_menu_item_target', ''),
(334, 76, '_wp_attachment_custom_header_last_used_screenr', '1623854835'),
(22, 17, '_menu_item_object', 'custom'),
(21, 17, '_menu_item_object_id', '17'),
(507, 172, 'pen_list_header_display_override', 'default'),
(508, 172, 'pen_list_footer_display_override', 'default'),
(12, 10, '_wp_attached_file', '2021/05/2020-landscape-1.png'),
(13, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:769;s:4:"file";s:28:"2021/05/2020-landscape-1.png";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:28:"2020-landscape-1-300x192.png";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:29:"2020-landscape-1-1024x656.png";s:5:"width";i:1024;s:6:"height";i:656;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"2020-landscape-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:28:"2020-landscape-1-768x492.png";s:5:"width";i:768;s:6:"height";i:492;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(14, 10, '_starter_content_theme', 'twentytwenty'),
(20, 17, '_menu_item_menu_item_parent', '0'),
(19, 17, '_menu_item_type', 'custom'),
(25, 17, '_menu_item_xfn', ''),
(26, 17, '_menu_item_url', 'http://renatogr.cf/'),
(509, 172, 'pen_list_summary_display_override', 'default'),
(51, 21, '_menu_item_type', 'custom'),
(52, 21, '_menu_item_menu_item_parent', '0'),
(53, 21, '_menu_item_object_id', '21'),
(54, 21, '_menu_item_object', 'custom'),
(55, 21, '_menu_item_target', ''),
(56, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(57, 21, '_menu_item_xfn', ''),
(58, 21, '_menu_item_url', 'http://renatogr.cf/'),
(333, 76, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1600;s:6:"height";i:800;s:4:"file";s:36:"2021/06/cropped-web-1012467_1920.jpg";s:5:"sizes";a:9:{s:6:"medium";a:4:{s:4:"file";s:36:"cropped-web-1012467_1920-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:37:"cropped-web-1012467_1920-1024x512.jpg";s:5:"width";i:1024;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:36:"cropped-web-1012467_1920-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:36:"cropped-web-1012467_1920-768x384.jpg";s:5:"width";i:768;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:37:"cropped-web-1012467_1920-1536x768.jpg";s:5:"width";i:1536;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:23:"screenr-blog-grid-small";a:4:{s:4:"file";s:36:"cropped-web-1012467_1920-350x200.jpg";s:5:"width";i:350;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:17:"screenr-blog-grid";a:4:{s:4:"file";s:36:"cropped-web-1012467_1920-540x300.jpg";s:5:"width";i:540;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:17:"screenr-blog-list";a:4:{s:4:"file";s:36:"cropped-web-1012467_1920-790x400.jpg";s:5:"width";i:790;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"screenr-service-small";a:4:{s:4:"file";s:36:"cropped-web-1012467_1920-538x280.jpg";s:5:"width";i:538;s:6:"height";i:280;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:75;}'),
(332, 76, '_wp_attachment_context', 'custom-header'),
(331, 76, '_wp_attached_file', '2021/06/cropped-web-1012467_1920.jpg'),
(238, 52, '_um_core', 'account'),
(259, 58, '_menu_item_type', 'post_type'),
(608, 177, '_menu_item_object', 'custom'),
(607, 177, '_menu_item_object_id', '177'),
(606, 177, '_menu_item_menu_item_parent', '0'),
(605, 177, '_menu_item_type', 'custom'),
(604, 176, '_menu_item_orphaned', '1628070573'),
(602, 176, '_menu_item_xfn', ''),
(603, 176, '_menu_item_url', 'http://renatogr.cf/members/renato/bp-messages/'),
(429, 117, 'um_content_restriction', 'a:8:{s:26:"_um_custom_access_settings";s:1:"0";s:14:"_um_accessible";s:1:"0";s:19:"_um_noaccess_action";s:1:"0";s:30:"_um_restrict_by_custom_message";s:1:"0";s:27:"_um_restrict_custom_message";s:0:"";s:19:"_um_access_redirect";s:1:"0";s:23:"_um_access_redirect_url";s:0:"";s:28:"_um_access_hide_from_queries";s:1:"0";}'),
(217, 45, 'um_content_restriction', 'a:8:{s:26:"_um_custom_access_settings";s:1:"1";s:14:"_um_accessible";s:1:"0";s:19:"_um_noaccess_action";s:1:"0";s:30:"_um_restrict_by_custom_message";s:1:"0";s:27:"_um_restrict_custom_message";s:0:"";s:19:"_um_access_redirect";s:1:"0";s:23:"_um_access_redirect_url";s:0:"";s:28:"_um_access_hide_from_queries";s:1:"0";}'),
(216, 45, '_edit_last', '1'),
(215, 45, '_edit_lock', '1620237557:1'),
(516, 172, 'pen_list_button_read_more_text_override', 'default'),
(428, 117, '_edit_last', '1'),
(427, 117, '_edit_lock', '1623941998:1'),
(515, 172, 'pen_list_profile_display_override', 'default'),
(512, 172, 'pen_list_thumbnail_animation_delay_reveal_override', 'default'),
(513, 172, 'pen_list_category_display_override', 'default'),
(510, 172, 'pen_list_tags_display_override', 'default'),
(511, 172, 'pen_list_thumbnail_animation_reveal_override', 'default'),
(335, 76, '_wp_attachment_is_custom_header', 'screenr'),
(153, 35, '_edit_lock', '1620217238:1'),
(159, 39, '_um_custom_fields', 'a:6:{s:10:"user_login";a:15:{s:5:"title";s:8:"Username";s:7:"metakey";s:10:"user_login";s:4:"type";s:4:"text";s:5:"label";s:8:"Username";s:8:"required";i:1;s:6:"public";i:1;s:8:"editable";i:0;s:8:"validate";s:15:"unique_username";s:9:"min_chars";i:3;s:9:"max_chars";i:24;s:8:"position";s:1:"1";s:6:"in_row";s:9:"_um_row_1";s:10:"in_sub_row";s:1:"0";s:9:"in_column";s:1:"1";s:8:"in_group";s:0:"";}s:10:"user_email";a:13:{s:5:"title";s:14:"E-mail Address";s:7:"metakey";s:10:"user_email";s:4:"type";s:4:"text";s:5:"label";s:14:"E-mail Address";s:8:"required";i:0;s:6:"public";i:1;s:8:"editable";i:1;s:8:"validate";s:12:"unique_email";s:8:"position";s:1:"4";s:6:"in_row";s:9:"_um_row_1";s:10:"in_sub_row";s:1:"0";s:9:"in_column";s:1:"1";s:8:"in_group";s:0:"";}s:13:"user_password";a:16:{s:5:"title";s:8:"Password";s:7:"metakey";s:13:"user_password";s:4:"type";s:8:"password";s:5:"label";s:8:"Password";s:8:"required";i:1;s:6:"public";i:1;s:8:"editable";i:1;s:9:"min_chars";i:8;s:9:"max_chars";i:30;s:15:"force_good_pass";i:1;s:18:"force_confirm_pass";i:1;s:8:"position";s:1:"5";s:6:"in_row";s:9:"_um_row_1";s:10:"in_sub_row";s:1:"0";s:9:"in_column";s:1:"1";s:8:"in_group";s:0:"";}s:10:"first_name";a:12:{s:5:"title";s:10:"First Name";s:7:"metakey";s:10:"first_name";s:4:"type";s:4:"text";s:5:"label";s:10:"First Name";s:8:"required";i:0;s:6:"public";i:1;s:8:"editable";i:1;s:8:"position";s:1:"2";s:6:"in_row";s:9:"_um_row_1";s:10:"in_sub_row";s:1:"0";s:9:"in_column";s:1:"1";s:8:"in_group";s:0:"";}s:9:"last_name";a:12:{s:5:"title";s:9:"Last Name";s:7:"metakey";s:9:"last_name";s:4:"type";s:4:"text";s:5:"label";s:9:"Last Name";s:8:"required";i:0;s:6:"public";i:1;s:8:"editable";i:1;s:8:"position";s:1:"3";s:6:"in_row";s:9:"_um_row_1";s:10:"in_sub_row";s:1:"0";s:9:"in_column";s:1:"1";s:8:"in_group";s:0:"";}s:9:"_um_row_1";a:4:{s:4:"type";s:3:"row";s:2:"id";s:9:"_um_row_1";s:8:"sub_rows";s:1:"1";s:4:"cols";s:1:"1";}}'),
(160, 39, '_um_mode', 'register'),
(161, 39, '_um_core', 'register'),
(162, 39, '_um_register_use_custom_settings', '0'),
(163, 40, '_um_custom_fields', 'a:3:{s:8:"username";a:13:{s:5:"title";s:18:"Username or E-mail";s:7:"metakey";s:8:"username";s:4:"type";s:4:"text";s:5:"label";s:18:"Username or E-mail";s:8:"required";i:1;s:6:"public";i:1;s:8:"editable";i:0;s:8:"validate";s:24:"unique_username_or_email";s:8:"position";s:1:"1";s:6:"in_row";s:9:"_um_row_1";s:10:"in_sub_row";s:1:"0";s:9:"in_column";s:1:"1";s:8:"in_group";s:0:"";}s:13:"user_password";a:16:{s:5:"title";s:8:"Password";s:7:"metakey";s:13:"user_password";s:4:"type";s:8:"password";s:5:"label";s:8:"Password";s:8:"required";i:1;s:6:"public";i:1;s:8:"editable";i:1;s:9:"min_chars";i:8;s:9:"max_chars";i:30;s:15:"force_good_pass";i:1;s:18:"force_confirm_pass";i:1;s:8:"position";s:1:"2";s:6:"in_row";s:9:"_um_row_1";s:10:"in_sub_row";s:1:"0";s:9:"in_column";s:1:"1";s:8:"in_group";s:0:"";}s:9:"_um_row_1";a:4:{s:4:"type";s:3:"row";s:2:"id";s:9:"_um_row_1";s:8:"sub_rows";s:1:"1";s:4:"cols";s:1:"1";}}'),
(164, 40, '_um_mode', 'login'),
(165, 40, '_um_core', 'login'),
(166, 40, '_um_login_use_custom_settings', '0'),
(167, 41, '_um_custom_fields', 'a:1:{s:9:"_um_row_1";a:4:{s:4:"type";s:3:"row";s:2:"id";s:9:"_um_row_1";s:8:"sub_rows";s:1:"1";s:4:"cols";s:1:"1";}}'),
(168, 41, '_um_mode', 'profile'),
(169, 41, '_um_core', 'profile'),
(170, 41, '_um_profile_use_custom_settings', '0'),
(171, 42, '_um_core', 'members'),
(172, 42, '_um_template', 'members'),
(173, 42, '_um_mode', 'directory'),
(174, 42, '_um_view_types', 'a:1:{i:0;s:4:"grid";}'),
(175, 42, '_um_default_view', 'grid'),
(176, 42, '_um_roles', 'a:0:{}'),
(177, 42, '_um_has_profile_photo', '0'),
(178, 42, '_um_has_cover_photo', '0'),
(179, 42, '_um_show_these_users', ''),
(180, 42, '_um_exclude_these_users', ''),
(181, 42, '_um_sortby', 'user_registered_desc'),
(182, 42, '_um_sortby_custom', ''),
(183, 42, '_um_sortby_custom_label', ''),
(184, 42, '_um_enable_sorting', '0'),
(185, 42, '_um_sorting_fields', 'a:0:{}'),
(186, 42, '_um_profile_photo', '1'),
(187, 42, '_um_cover_photos', '1'),
(188, 42, '_um_show_name', '1'),
(189, 42, '_um_show_tagline', '0'),
(190, 42, '_um_tagline_fields', 'a:0:{}'),
(191, 42, '_um_show_userinfo', '0'),
(192, 42, '_um_reveal_fields', 'a:0:{}'),
(193, 42, '_um_show_social', '0'),
(194, 42, '_um_userinfo_animate', '1'),
(195, 42, '_um_search', '0'),
(196, 42, '_um_roles_can_search', 'a:0:{}'),
(197, 42, '_um_filters', '0'),
(198, 42, '_um_roles_can_filter', 'a:0:{}'),
(199, 42, '_um_search_fields', 'a:0:{}'),
(200, 42, '_um_filters_expanded', '0'),
(201, 42, '_um_filters_is_collapsible', '1'),
(202, 42, '_um_search_filters', 'a:0:{}'),
(203, 42, '_um_must_search', '0'),
(204, 42, '_um_max_users', ''),
(205, 42, '_um_profiles_per_page', '12'),
(206, 42, '_um_profiles_per_page_mobile', '6'),
(207, 42, '_um_directory_header', '{total_users} Members'),
(208, 42, '_um_directory_header_single', '{total_users} Member'),
(209, 42, '_um_directory_no_users', 'We are sorry. We cannot find any users who match your search criteria.'),
(237, 51, '_um_core', 'logout'),
(236, 50, '_um_core', 'members'),
(235, 49, '_um_core', 'register'),
(234, 48, '_um_core', 'login'),
(329, 75, '_wp_attached_file', '2021/06/web-1012467_1920.jpg'),
(233, 47, '_um_core', 'user'),
(239, 53, '_um_core', 'password-reset'),
(260, 58, '_menu_item_menu_item_parent', '0'),
(261, 58, '_menu_item_object_id', '48'),
(262, 58, '_menu_item_object', 'page'),
(263, 58, '_menu_item_target', ''),
(264, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(265, 58, '_menu_item_xfn', ''),
(266, 58, '_menu_item_url', ''),
(267, 59, '_menu_item_type', 'post_type'),
(268, 59, '_menu_item_menu_item_parent', '0'),
(269, 59, '_menu_item_object_id', '49'),
(270, 59, '_menu_item_object', 'page'),
(271, 59, '_menu_item_target', ''),
(272, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(273, 59, '_menu_item_xfn', ''),
(274, 59, '_menu_item_url', ''),
(275, 60, '_menu_item_type', 'post_type'),
(276, 60, '_menu_item_menu_item_parent', '0'),
(277, 60, '_menu_item_object_id', '50'),
(278, 60, '_menu_item_object', 'page'),
(279, 60, '_menu_item_target', ''),
(280, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(281, 60, '_menu_item_xfn', ''),
(282, 60, '_menu_item_url', ''),
(601, 176, '_menu_item_classes', 'a:2:{i:0;s:7:"bp-menu";i:1;s:18:"bp-bp-messages-nav";}'),
(600, 176, '_menu_item_target', ''),
(599, 176, '_menu_item_object', 'custom'),
(598, 176, '_menu_item_object_id', '176'),
(597, 176, '_menu_item_menu_item_parent', '0'),
(291, 62, '_menu_item_type', 'post_type'),
(292, 62, '_menu_item_menu_item_parent', '106'),
(293, 62, '_menu_item_object_id', '52'),
(294, 62, '_menu_item_object', 'page'),
(295, 62, '_menu_item_target', ''),
(296, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(297, 62, '_menu_item_xfn', ''),
(298, 62, '_menu_item_url', ''),
(426, 107, 'um_content_restriction', 'a:8:{s:26:"_um_custom_access_settings";s:1:"0";s:14:"_um_accessible";s:1:"0";s:19:"_um_noaccess_action";s:1:"0";s:30:"_um_restrict_by_custom_message";s:1:"0";s:27:"_um_restrict_custom_message";s:0:"";s:19:"_um_access_redirect";s:1:"0";s:23:"_um_access_redirect_url";s:0:"";s:28:"_um_access_hide_from_queries";s:1:"0";}'),
(425, 107, '_edit_last', '1'),
(424, 107, '_edit_lock', '1623861862:1'),
(309, 64, '_wp_attached_file', '2021/05/R3d73a07fb506b9bc927816c3df416652.png'),
(310, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:200;s:4:"file";s:45:"2021/05/R3d73a07fb506b9bc927816c3df416652.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:45:"R3d73a07fb506b9bc927816c3df416652-300x125.png";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"R3d73a07fb506b9bc927816c3df416652-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(311, 65, '_wp_attached_file', '2021/05/cropped-2020-landscape-1.png'),
(312, 65, '_wp_attachment_context', 'site-icon'),
(313, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:36:"2021/05/cropped-2020-landscape-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:36:"cropped-2020-landscape-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:36:"cropped-2020-landscape-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:36:"cropped-2020-landscape-1-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:36:"cropped-2020-landscape-1-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:36:"cropped-2020-landscape-1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:34:"cropped-2020-landscape-1-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(330, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:698;s:4:"file";s:28:"2021/06/web-1012467_1920.jpg";s:5:"sizes";a:9:{s:6:"medium";a:4:{s:4:"file";s:28:"web-1012467_1920-300x109.jpg";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"web-1012467_1920-1024x372.jpg";s:5:"width";i:1024;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"web-1012467_1920-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"web-1012467_1920-768x279.jpg";s:5:"width";i:768;s:6:"height";i:279;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:29:"web-1012467_1920-1536x558.jpg";s:5:"width";i:1536;s:6:"height";i:558;s:9:"mime-type";s:10:"image/jpeg";}s:23:"screenr-blog-grid-small";a:4:{s:4:"file";s:28:"web-1012467_1920-350x200.jpg";s:5:"width";i:350;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:17:"screenr-blog-grid";a:4:{s:4:"file";s:28:"web-1012467_1920-540x300.jpg";s:5:"width";i:540;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:17:"screenr-blog-list";a:4:{s:4:"file";s:28:"web-1012467_1920-790x400.jpg";s:5:"width";i:790;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"screenr-service-small";a:4:{s:4:"file";s:28:"web-1012467_1920-538x280.jpg";s:5:"width";i:538;s:6:"height";i:280;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(467, 122, '_wp_trash_meta_time', '1625690867'),
(506, 172, 'pen_list_date_location_override', 'default'),
(466, 122, '_wp_trash_meta_status', 'publish'),
(324, 45, '_wp_page_template', 'default'),
(514, 172, 'pen_list_category_location_override', 'default'),
(504, 172, 'pen_list_author_display_override', 'default'),
(505, 172, 'pen_list_date_display_override', 'default'),
(503, 172, 'pen_list_animation_delay_reveal_override', 'default'),
(501, 172, 'pen_list_title_display_override', 'default'),
(502, 172, 'pen_list_animation_reveal_override', 'default'),
(500, 172, 'pen_list_title_alignment_override', 'default'),
(496, 172, '_edit_last', '1'),
(497, 172, '_pingme', '1'),
(498, 172, '_encloseme', '1'),
(499, 172, 'pen_list_header_alignment_override', 'default'),
(493, 172, '_edit_lock', '1627829579:1'),
(492, 171, '_wp_trash_meta_time', '1627828963'),
(491, 171, '_wp_trash_meta_status', 'publish'),
(489, 169, '_wp_trash_meta_status', 'publish'),
(490, 169, '_wp_trash_meta_time', '1627828929'),
(488, 170, '_wp_attachment_metadata', 'a:10:{s:8:"filesize";i:522784;s:9:"mime_type";s:9:"video/mp4";s:6:"length";i:9;s:16:"length_formatted";s:4:"0:09";s:5:"width";i:480;s:6:"height";i:360;s:10:"fileformat";s:3:"mp4";s:10:"dataformat";s:9:"quicktime";s:5:"audio";a:7:{s:10:"dataformat";s:3:"mp4";s:5:"codec";s:19:"ISO/IEC 14496-3 AAC";s:11:"sample_rate";d:44100;s:8:"channels";i:2;s:15:"bits_per_sample";i:16;s:8:"lossless";b:0;s:11:"channelmode";s:6:"stereo";}s:17:"created_timestamp";i:1604269151;}'),
(487, 170, '_wp_attached_file', '2021/08/VID_20210613_234602_317.mp4'),
(486, 169, '_edit_lock', '1627828871:1'),
(485, 168, '_wp_trash_meta_time', '1627828695'),
(484, 168, '_wp_trash_meta_status', 'publish'),
(483, 168, '_edit_lock', '1627828690:1'),
(481, 167, '_wp_trash_meta_status', 'publish'),
(482, 167, '_wp_trash_meta_time', '1627828447'),
(480, 166, '_wp_trash_meta_time', '1627828230'),
(479, 166, '_wp_trash_meta_status', 'publish'),
(478, 165, '_wp_trash_meta_time', '1627828163'),
(476, 163, '_customize_restore_dismissed', '1'),
(477, 165, '_wp_trash_meta_status', 'publish'),
(518, 172, 'pen_list_background_image_content_title_dynamic_override', 'default'),
(517, 172, 'pen_list_author_location_override', 'default'),
(468, 122, '_wp_desired_post_slug', 'redlive-beta-kraj-podrske'),
(520, 172, 'pen_list_thumbnail_alignment_override', 'default'),
(519, 172, 'pen_list_thumbnail_display_override', 'default'),
(406, 104, '_edit_lock', '1623942666:1'),
(407, 104, '_edit_last', '1'),
(408, 104, 'um_content_restriction', 'a:8:{s:26:"_um_custom_access_settings";s:1:"0";s:14:"_um_accessible";s:1:"0";s:19:"_um_noaccess_action";s:1:"0";s:30:"_um_restrict_by_custom_message";s:1:"0";s:27:"_um_restrict_custom_message";s:0:"";s:19:"_um_access_redirect";s:1:"0";s:23:"_um_access_redirect_url";s:0:"";s:28:"_um_access_hide_from_queries";s:1:"0";}'),
(409, 106, '_menu_item_type', 'post_type'),
(410, 106, '_menu_item_menu_item_parent', '0'),
(411, 106, '_menu_item_object_id', '104'),
(412, 106, '_menu_item_object', 'page'),
(413, 106, '_menu_item_target', ''),
(414, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(415, 106, '_menu_item_xfn', ''),
(416, 106, '_menu_item_url', ''),
(419, 58, '_wp_old_date', '2021-05-05'),
(420, 59, '_wp_old_date', '2021-05-05'),
(421, 60, '_wp_old_date', '2021-05-05'),
(596, 176, '_menu_item_type', 'custom'),
(423, 62, '_wp_old_date', '2021-05-05'),
(430, 122, '_edit_lock', '1623944403:1'),
(474, 164, '_wp_trash_meta_status', 'publish'),
(433, 122, '_edit_last', '1'),
(434, 122, 'um_content_restriction', 'a:8:{s:26:"_um_custom_access_settings";s:1:"0";s:14:"_um_accessible";s:1:"0";s:19:"_um_noaccess_action";s:1:"0";s:30:"_um_restrict_by_custom_message";s:1:"0";s:27:"_um_restrict_custom_message";s:0:"";s:19:"_um_access_redirect";s:1:"0";s:23:"_um_access_redirect_url";s:0:"";s:28:"_um_access_hide_from_queries";s:1:"0";}'),
(475, 164, '_wp_trash_meta_time', '1627827796'),
(471, 162, '_wp_trash_meta_time', '1627827685'),
(472, 161, '_customize_restore_dismissed', '1'),
(452, 131, '_edit_lock', '1627828981:1'),
(453, 131, '_edit_last', '1'),
(454, 131, 'um_content_restriction', 'a:8:{s:26:"_um_custom_access_settings";s:1:"0";s:14:"_um_accessible";s:1:"0";s:19:"_um_noaccess_action";s:1:"0";s:30:"_um_restrict_by_custom_message";s:1:"0";s:27:"_um_restrict_custom_message";s:0:"";s:19:"_um_access_redirect";s:1:"0";s:23:"_um_access_redirect_url";s:0:"";s:28:"_um_access_hide_from_queries";s:1:"0";}'),
(470, 162, '_wp_trash_meta_status', 'publish'),
(469, 161, '_edit_lock', '1627827619:1'),
(457, 153, '_edit_lock', '1624035269:1'),
(458, 154, '_wp_attached_file', '2021/06/kepcr-1.png'),
(459, 154, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:415;s:6:"height";i:485;s:4:"file";s:19:"2021/06/kepcr-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:19:"kepcr-1-257x300.png";s:5:"width";i:257;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"kepcr-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:23:"screenr-blog-grid-small";a:4:{s:4:"file";s:19:"kepcr-1-350x200.png";s:5:"width";i:350;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:17:"screenr-blog-grid";a:4:{s:4:"file";s:19:"kepcr-1-415x300.png";s:5:"width";i:415;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:17:"screenr-blog-list";a:4:{s:4:"file";s:19:"kepcr-1-415x400.png";s:5:"width";i:415;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:21:"screenr-service-small";a:4:{s:4:"file";s:19:"kepcr-1-415x280.png";s:5:"width";i:415;s:6:"height";i:280;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(460, 155, '_wp_attached_file', '2021/06/kepcr-2.png'),
(461, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:457;s:6:"height";i:169;s:4:"file";s:19:"2021/06/kepcr-2.png";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:19:"kepcr-2-300x111.png";s:5:"width";i:300;s:6:"height";i:111;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"kepcr-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:23:"screenr-blog-grid-small";a:4:{s:4:"file";s:19:"kepcr-2-350x169.png";s:5:"width";i:350;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(462, 156, '_wp_attached_file', '2021/06/kepcr-1-1.png'),
(463, 156, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:415;s:6:"height";i:485;s:4:"file";s:21:"2021/06/kepcr-1-1.png";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:21:"kepcr-1-1-257x300.png";s:5:"width";i:257;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"kepcr-1-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:23:"screenr-blog-grid-small";a:4:{s:4:"file";s:21:"kepcr-1-1-350x200.png";s:5:"width";i:350;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:17:"screenr-blog-grid";a:4:{s:4:"file";s:21:"kepcr-1-1-415x300.png";s:5:"width";i:415;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:17:"screenr-blog-list";a:4:{s:4:"file";s:21:"kepcr-1-1-415x400.png";s:5:"width";i:415;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:21:"screenr-service-small";a:4:{s:4:"file";s:21:"kepcr-1-1-415x280.png";s:5:"width";i:415;s:6:"height";i:280;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(464, 153, '_edit_last', '1'),
(465, 153, 'um_content_restriction', 'a:8:{s:26:"_um_custom_access_settings";s:1:"0";s:14:"_um_accessible";s:1:"0";s:19:"_um_noaccess_action";s:1:"0";s:30:"_um_restrict_by_custom_message";s:1:"0";s:27:"_um_restrict_custom_message";s:0:"";s:19:"_um_access_redirect";s:1:"0";s:23:"_um_access_redirect_url";s:0:"";s:28:"_um_access_hide_from_queries";s:1:"0";}'),
(521, 172, 'pen_color_list_thumbnail_frame_override', 'default'),
(522, 172, 'pen_list_thumbnail_frame_override', 'default'),
(523, 172, 'pen_list_thumbnail_resize_override', 'default'),
(524, 172, 'pen_list_thumbnail_rotate_override', 'default'),
(525, 172, 'pen_list_tile_thumbnail_style_override', 'default'),
(526, 172, 'pen_list_masonry_thumbnail_style_override', 'default'),
(527, 172, 'pen_list_button_comment_display_override', 'default'),
(528, 172, 'pen_list_button_edit_display_override', 'default'),
(529, 172, 'pen_content_custom_preset_color_override', 'default'),
(530, 172, 'pen_content_custom_preset_font_override', 'default'),
(531, 172, 'pen_site_width_override', 'default'),
(532, 172, 'pen_sidebar_left_width_override', 'default'),
(533, 172, 'pen_sidebar_right_width_override', 'default'),
(534, 172, 'pen_site_header_display_override', 'default'),
(535, 172, 'pen_site_footer_display_override', 'default'),
(536, 172, 'pen_navigation_display_override', 'default'),
(537, 172, 'pen_content_header_alignment_override', 'default'),
(538, 172, 'pen_content_title_alignment_override', 'default'),
(539, 172, 'pen_content_title_display_override', 'default'),
(540, 172, 'pen_content_animation_reveal_override', 'default'),
(541, 172, 'pen_content_animation_delay_reveal_override', 'default'),
(542, 172, 'pen_content_author_display_override', 'default'),
(543, 172, 'pen_content_date_display_override', 'default'),
(544, 172, 'pen_content_date_location_override', 'default'),
(545, 172, 'pen_content_header_display_override', 'default'),
(546, 172, 'pen_content_footer_display_override', 'default'),
(547, 172, 'pen_content_tags_display_override', 'default'),
(548, 172, 'pen_content_profile_display_override', 'default'),
(549, 172, 'pen_content_author_location_override', 'default'),
(550, 172, 'pen_content_share_display_override', 'default'),
(551, 172, 'pen_content_share_location_override', 'default'),
(552, 172, 'pen_content_category_display_override', 'default'),
(553, 172, 'pen_content_category_location_override', 'default'),
(554, 172, 'pen_content_search_display_override', 'default'),
(555, 172, 'pen_content_search_location_override', 'default'),
(556, 172, 'pen_content_previous_display_override', 'default'),
(557, 172, 'pen_content_next_display_override', 'default'),
(558, 172, 'pen_content_background_image_content_title_dynamic_override', 'default'),
(559, 172, 'pen_content_background_image_bottom_dynamic_override', 'default'),
(560, 172, 'pen_content_background_image_footer_dynamic_override', 'default'),
(561, 172, 'pen_content_background_image_header_dynamic_override', 'default'),
(562, 172, 'pen_content_background_image_navigation_dynamic_override', 'default'),
(563, 172, 'pen_content_background_image_navigation_submenu_dynamic_override', 'default'),
(564, 172, 'pen_content_background_image_search_dynamic_override', 'default'),
(565, 172, 'pen_content_background_image_site_dynamic_override', 'default'),
(566, 172, 'pen_content_thumbnail_display_override', 'default'),
(567, 172, 'pen_color_content_thumbnail_frame_override', 'default'),
(568, 172, 'pen_content_thumbnail_alignment_override', 'default'),
(569, 172, 'pen_content_thumbnail_animation_reveal_override', 'default'),
(570, 172, 'pen_content_thumbnail_animation_delay_reveal_override', 'default'),
(571, 172, 'pen_content_thumbnail_frame_override', 'default'),
(572, 172, 'pen_content_thumbnail_resize_override', 'default'),
(573, 172, 'pen_content_thumbnail_rotate_override', 'default'),
(574, 172, 'um_content_restriction', 'a:8:{s:26:"_um_custom_access_settings";s:1:"0";s:14:"_um_accessible";s:1:"0";s:19:"_um_noaccess_action";s:1:"0";s:30:"_um_restrict_by_custom_message";s:1:"0";s:27:"_um_restrict_custom_message";s:0:"";s:19:"_um_access_redirect";s:1:"0";s:23:"_um_access_redirect_url";s:0:"";s:28:"_um_access_hide_from_queries";s:1:"0";}'),
(575, 172, 'ss_social_share_disable', ''),
(576, 172, 'enclosure', 'http://renatogr.cf/wp-content/uploads/2021/08/VID_20210613_234602_317.mp4\n522784\nvideo/mp4\n'),
(577, 172, 'ss_ss_click_share_count_facebook', '3'),
(578, 172, 'ss_total_share_count', '0'),
(579, 174, '_wp_trash_meta_status', 'publish'),
(580, 174, '_wp_trash_meta_time', '1628068263'),
(581, 49, '_edit_lock', '1628070563:1'),
(582, 175, '_menu_item_type', 'post_type'),
(583, 175, '_menu_item_menu_item_parent', '0'),
(584, 175, '_menu_item_object_id', '131'),
(585, 175, '_menu_item_object', 'page'),
(586, 175, '_menu_item_target', ''),
(587, 175, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(588, 175, '_menu_item_xfn', ''),
(589, 175, '_menu_item_url', ''),
(609, 177, '_menu_item_target', ''),
(591, 58, '_wp_old_date', '2021-06-16'),
(592, 60, '_wp_old_date', '2021-06-16'),
(593, 59, '_wp_old_date', '2021-06-16'),
(594, 106, '_wp_old_date', '2021-06-16'),
(595, 62, '_wp_old_date', '2021-06-16'),
(610, 177, '_menu_item_classes', 'a:2:{i:0;s:7:"bp-menu";i:1;s:13:"bp-groups-nav";}'),
(611, 177, '_menu_item_xfn', ''),
(612, 177, '_menu_item_url', 'http://renatogr.cf/members/renato/groups/'),
(613, 177, '_menu_item_orphaned', '1628070573');

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_posts`
--

CREATE TABLE `wp5t_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp5t_posts`
--

INSERT INTO `wp5t_posts` VALUES
(75, 1, '2021-06-16 14:46:09', '2021-06-16 14:46:09', '', 'web-1012467_1920', '', 'inherit', 'open', 'closed', '', 'web-1012467_1920', '', '', '2021-06-16 14:46:09', '2021-06-16 14:46:09', '', 0, 'http://renatogr.cf/wp-content/uploads/2021/06/web-1012467_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2021-06-16 14:46:32', '2021-06-16 14:46:32', '', 'cropped-web-1012467_1920.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-web-1012467_1920-jpg', '', '', '2021-06-16 14:46:32', '2021-06-16 14:46:32', '', 0, 'http://renatogr.cf/wp-content/uploads/2021/06/cropped-web-1012467_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(178, 1, '2021-08-04 09:59:37', '2021-08-04 09:59:37', '', 'Aktiviraj', '', 'publish', 'closed', 'closed', '', 'aktiviraj', '', '', '2021-08-04 09:59:37', '2021-08-04 09:59:37', '', 0, 'http://renatogr.cf/aktiviraj/', 0, 'page', '', 0),
(171, 1, '2021-08-01 14:42:43', '2021-08-01 14:42:43', '{\n    "sidebars_widgets[wp_inactive_widgets]": {\n        "value": [\n            "archives-2",\n            "meta-2",\n            "search-2",\n            "categories-2",\n            "recent-posts-2",\n            "recent-comments-2",\n            "um_search_widget-3",\n            "text-3",\n            "media_video-3",\n            "search-6"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:42:43"\n    },\n    "sidebars_widgets[sidebar-footer-top]": {\n        "value": [\n            "archives-4",\n            "search-7"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:42:43"\n    },\n    "sidebars_widgets[sidebar-footer-left]": {\n        "value": [\n            "bp_core_login_widget-6"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:42:43"\n    },\n    "widget_search[7]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:42:43"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f08d3793-14a6-4a95-aa4a-52e8fadf8a8d', '', '', '2021-08-01 14:42:43', '2021-08-01 14:42:43', '', 0, 'http://renatogr.cf/renato/2021/08/14/01/42/43/171/f08d3793-14a6-4a95-aa4a-52e8fadf8a8d/uncategorized/', 0, 'customize_changeset', '', 0),
(170, 1, '2021-08-01 14:41:47', '2021-08-01 14:41:47', '', 'VID_20210613_234602_317', '', 'inherit', 'open', 'closed', '', 'vid_20210613_234602_317', '', '', '2021-08-01 14:41:47', '2021-08-01 14:41:47', '', 0, 'http://renatogr.cf/wp-content/uploads/2021/08/VID_20210613_234602_317.mp4', 0, 'attachment', 'video/mp4', 0),
(169, 1, '2021-08-01 14:42:09', '2021-08-01 14:42:09', '{\n    "sidebars_widgets[sidebar-footer-top]": {\n        "value": [\n            "archives-4",\n            "media_video-3"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:40:32"\n    },\n    "widget_media_video[3]": {\n        "value": {\n            "encoded_serialized_instance": "YToxMzp7czo3OiJwcmVsb2FkIjtzOjg6Im1ldGFkYXRhIjtzOjQ6Imxvb3AiO2I6MDtzOjc6ImNvbnRlbnQiO3M6MDoiIjtzOjM6Im1wNCI7czo3MzoiaHR0cDovL3JlbmF0b2dyLmNmL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDIxLzA4L1ZJRF8yMDIxMDYxM18yMzQ2MDJfMzE3Lm1wNCI7czozOiJtNHYiO3M6MDoiIjtzOjQ6IndlYm0iO3M6MDoiIjtzOjM6Im9ndiI7czowOiIiO3M6MzoiZmx2IjtzOjA6IiI7czoxMzoiYXR0YWNobWVudF9pZCI7aToxNzA7czozOiJ1cmwiO3M6NzM6Imh0dHA6Ly9yZW5hdG9nci5jZi93cC1jb250ZW50L3VwbG9hZHMvMjAyMS8wOC9WSURfMjAyMTA2MTNfMjM0NjAyXzMxNy5tcDQiO3M6NToidGl0bGUiO3M6MDoiIjtzOjIyOiJwZW5fdGhlbWVfY29sb3Jfd2lkZ2V0IjtzOjk6ImF1dG9tYXRpYyI7czoyNjoicGVuX3RoZW1lX2FuaW1hdGlvbl93aWRnZXQiO3M6NjoiZmFkZUluIjt9",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "fddab4345aeb34b219e85c5d9998210d"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:42:09"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd94f7683-96e8-44f8-9c22-505e6e901828', '', '', '2021-08-01 14:42:09', '2021-08-01 14:42:09', '', 0, 'http://renatogr.cf/?p=169', 0, 'customize_changeset', '', 0),
(168, 1, '2021-08-01 14:38:15', '2021-08-01 14:38:15', '{\n    "sidebars_widgets[sidebar-footer-left]": {\n        "value": [\n            "bp_core_login_widget-6",\n            "search-6"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:38:15"\n    },\n    "sidebars_widgets[sidebar-footer-right]": {\n        "value": [\n            "bp_groups_widget-5"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:36:26"\n    },\n    "sidebars_widgets[sidebar-footer-bottom]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:37:26"\n    },\n    "widget_bp_core_login_widget[5]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:36:26"\n    },\n    "widget_bp_groups_widget[5]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:36:26"\n    },\n    "widget_bp_core_whos_online_widget[5]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:36:26"\n    },\n    "sidebars_widgets[sidebar-footer-top]": {\n        "value": [\n            "archives-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:37:26"\n    },\n    "widget_archives[4]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:37:26"\n    },\n    "widget_bp_core_login_widget[6]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:37:26"\n    },\n    "widget_search[6]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:38:15"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '61044c69-cb3c-4134-9568-10c08b64b04e', '', '', '2021-08-01 14:38:15', '2021-08-01 14:38:15', '', 0, 'http://renatogr.cf/?p=168', 0, 'customize_changeset', '', 0),
(167, 1, '2021-08-01 14:34:07', '2021-08-01 14:34:07', '{\n    "sidebars_widgets[sidebar-bottom]": {\n        "value": [\n            "socialsnap-social-followers-widget-3"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:34:07"\n    },\n    "widget_socialsnap-social-followers-widget[3]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:34:07"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '273e97f4-5048-4983-a90a-d68e1ef85f5e', '', '', '2021-08-01 14:34:07', '2021-08-01 14:34:07', '', 0, 'http://renatogr.cf/renato/2021/08/14/01/34/07/167/273e97f4-5048-4983-a90a-d68e1ef85f5e/uncategorized/', 0, 'customize_changeset', '', 0),
(166, 1, '2021-08-01 14:30:30', '2021-08-01 14:30:30', '{\n    "pen::pen_background_image_site_dynamic[preset_1]": {\n        "value": "featured_image",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:30:30"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4304f78a-165d-466d-8279-9d96fcdcd75d', '', '', '2021-08-01 14:30:30', '2021-08-01 14:30:30', '', 0, 'http://renatogr.cf/renato/2021/08/14/01/30/30/166/4304f78a-165d-466d-8279-9d96fcdcd75d/uncategorized/', 0, 'customize_changeset', '', 0),
(165, 1, '2021-08-01 14:29:23', '2021-08-01 14:29:23', '{\n    "pen::pen_phone[preset_1]": {\n        "value": "",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:29:23"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '97a2bb28-e13a-4dac-a690-7cebe29f6c81', '', '', '2021-08-01 14:29:23', '2021-08-01 14:29:23', '', 0, 'http://renatogr.cf/renato/2021/08/14/01/29/23/165/97a2bb28-e13a-4dac-a690-7cebe29f6c81/uncategorized/', 0, 'customize_changeset', '', 0),
(164, 1, '2021-08-01 14:23:16', '2021-08-01 14:23:16', '[]', '', '', 'trash', 'closed', 'closed', '', '5a0d4e07-9463-4e00-9dfd-1f30d2a9dbb4', '', '', '2021-08-01 14:23:16', '2021-08-01 14:23:16', '', 0, 'http://renatogr.cf/renato/2021/08/14/01/23/16/164/5a0d4e07-9463-4e00-9dfd-1f30d2a9dbb4/uncategorized/', 0, 'customize_changeset', '', 0),
(163, 1, '2021-08-01 14:22:12', '0000-00-00 00:00:00', '{\n    "pen::pen_color_site_shadow_display[preset_13]": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:22:12"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '2df1989e-69a3-49dd-bd0d-7f5986d148ba', '', '', '2021-08-01 14:22:12', '0000-00-00 00:00:00', '', 0, 'http://renatogr.cf/?p=163', 0, 'customize_changeset', '', 0),
(102, 1, '2021-06-16 15:05:45', '2021-06-16 15:05:45', '[ultimatemember form_id="39"]', 'Register', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2021-06-16 15:05:45', '2021-06-16 15:05:45', '', 49, 'http://renatogr.cf/?p=102', 0, 'revision', '', 0),
(103, 1, '2021-06-16 15:05:45', '2021-06-16 15:05:45', '[ultimatemember form_id="41"]', 'User', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2021-06-16 15:05:45', '2021-06-16 15:05:45', '', 47, 'http://renatogr.cf/?p=103', 0, 'revision', '', 0),
(104, 1, '2021-06-16 15:07:04', '2021-06-16 15:07:04', '<!-- wp:buttons -->\n<div class="wp-block-buttons"><!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="http://renatogr.cf/?page_id=107">ITM/BMI Kalkulator</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="http://renatogr.cf/?page_id=117">RedLive</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Projekti', '', 'publish', 'closed', 'closed', '', 'projekti', '', '', '2021-06-17 15:11:00', '2021-06-17 15:11:00', '', 0, 'http://renatogr.cf/?page_id=104', 0, 'page', '', 0),
(105, 1, '2021-06-16 15:07:04', '2021-06-16 15:07:04', '', 'Projekti', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2021-06-16 15:07:04', '2021-06-16 15:07:04', '', 104, 'http://renatogr.cf/?p=105', 0, 'revision', '', 0),
(106, 1, '2021-08-04 09:51:03', '2021-06-16 15:08:52', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2021-08-04 09:51:03', '2021-08-04 09:51:03', '', 0, 'http://renatogr.cf/?p=106', 4, 'nav_menu_item', '', 0),
(117, 1, '2021-06-17 14:59:52', '2021-06-17 14:59:52', '<!-- wp:paragraph -->\n<p>RedLive je desktop aplikacija, služi za dijeljenje videozapisa. Trenutno je u beta verziju</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class="wp-block-buttons"><!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="https://carnet-my.sharepoint.com/personal/renato_grubesic_skole_hr/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Frenato%5Fgrubesic%5Fskole%5Fhr%2FDocuments%2FSajt%2FRedlive%20betatest%201%2Eexe&amp;parent=%2Fpersonal%2Frenato%5Fgrubesic%5Fskole%5Fhr%2FDocuments%2FSajt">RedLive BETA TEST1</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'RedLive', '', 'publish', 'closed', 'closed', '', 'redlive', '', '', '2021-06-17 14:59:54', '2021-06-17 14:59:54', '', 0, 'http://renatogr.cf/?page_id=117', 0, 'page', '', 0),
(116, 1, '2021-06-16 16:35:02', '2021-06-16 16:35:02', '<!-- wp:paragraph -->\n<p>ITM=Indeks tjelesne mase/BMI= Body mass index</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Upute:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1.Kada pokrenete program odaberite Hrvatski standard</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. U polje za visinu unesite vašu visinu u centimetrima a u polje za masu  unesete svoju težinu u kilogramima</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3. Kada unesete zadane podatke, pritisnite "Izraćunaj" i dobiti ćete svoj indeks tjelesne mase</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>VAŽNO: Ukoliko koristite Windows 8,8.1,10,11 windows defender će vam govoriti da je aplikacija nesigurna. Kada i ako vam to izađe pritisnite više i svejedno pokreni. A zašto to izlazi? Zato što aplikacija nije pravilno potpisana, tako da bez straha od virusa i ostalih zloćudnih softwera.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Podržani operativvni sustavi:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows: 7 x64 x32</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows:8 x64 x32</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows:8.1 x64 x32</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows:10 x64 x32</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows:11 (Uskoro) </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Linux</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>MacOS: 64bit</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class="wp-block-buttons"><!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="https://carnet-my.sharepoint.com/:u:/g/personal/renato_grubesic_skole_hr/EdLIJtYCgxJLpmT_y5uX9iEBgtyG3zsj_hl2AJdJ5tSiyw?e=8JUmbL" target="_blank" rel="noreferrer noopener">Preuzmi</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ukoliko trebate pomoć možete me kontaktirati na:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows Live Messenger/MSN Messenger: renato.grubesic@aol.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>AOL Instant Messenger/AIM: Renato</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>E-mail: renato.grubesic@aol.com</p>\n<!-- /wp:paragraph -->', 'ITM/BMI kalkulator', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-06-16 16:35:02', '2021-06-16 16:35:02', '', 107, 'http://renatogr.cf/?p=116', 0, 'revision', '', 0),
(10, 1, '2021-05-05 12:16:57', '2021-05-05 12:16:57', '', 'Nova UMoMA otvara svoja vrata', '', 'inherit', 'open', 'closed', '', 'nova-umoma-otvara-svoja-vrata', '', '', '2021-05-05 12:16:57', '2021-05-05 12:16:57', '', 0, 'http://renatogr.cf/wp-content/uploads/2021/05/2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(157, 1, '2021-06-18 16:37:53', '2021-06-18 16:37:53', '<!-- wp:paragraph -->\n<p>Što je kocka?  Kocka je program za okretanje virtualne kocke.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Upute se nalaze u samom programu a možete ih vidjeti klikom na "?"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Par slika:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {"ids":[155,156],"linkTo":"none"} -->\n<figure class="wp-block-gallery columns-2 is-cropped"><ul class="blocks-gallery-grid"><li class="blocks-gallery-item"><figure><img src="http://renatogr.cf/wp-content/uploads/2021/06/kepcr-2.png" alt="" data-id="155" data-link="http://renatogr.cf/?attachment_id=155" class="wp-image-155"/></figure></li><li class="blocks-gallery-item"><figure><img src="http://renatogr.cf/wp-content/uploads/2021/06/kepcr-1-1.png" alt="" data-id="156" data-full-url="http://renatogr.cf/wp-content/uploads/2021/06/kepcr-1-1.png" data-link="http://renatogr.cf/?attachment_id=156" class="wp-image-156"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Kocka', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2021-06-18 16:37:53', '2021-06-18 16:37:53', '', 153, 'http://renatogr.cf/?p=157', 0, 'revision', '', 0),
(158, 1, '2021-06-18 16:44:45', '2021-06-18 16:44:45', '<!-- wp:paragraph -->\n<p>Što je kocka?  Kocka je program za okretanje virtualne kocke.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Upute se nalaze u samom programu a možete ih vidjeti klikom na "?"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Par slika:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {"ids":[155,156],"linkTo":"none"} -->\n<figure class="wp-block-gallery columns-2 is-cropped"><ul class="blocks-gallery-grid"><li class="blocks-gallery-item"><figure><img src="http://renatogr.cf/wp-content/uploads/2021/06/kepcr-2.png" alt="" data-id="155" data-link="http://renatogr.cf/?attachment_id=155" class="wp-image-155"/></figure></li><li class="blocks-gallery-item"><figure><img src="http://renatogr.cf/wp-content/uploads/2021/06/kepcr-1-1.png" alt="" data-id="156" data-full-url="http://renatogr.cf/wp-content/uploads/2021/06/kepcr-1-1.png" data-link="http://renatogr.cf/?attachment_id=156" class="wp-image-156"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:buttons -->\n<div class="wp-block-buttons"><!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="https://mega.nz/file/DFtAhJrL#tDyzo1ReQ2xoWg2OEZT5vodYwr2k9mplOzwXCkDC2R4" target="_blank" rel="noreferrer noopener">Preuzmi kocke</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Kocka', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2021-06-18 16:44:45', '2021-06-18 16:44:45', '', 153, 'http://renatogr.cf/?p=158', 0, 'revision', '', 0),
(160, 1, '2021-08-01 14:19:28', '0000-00-00 00:00:00', '', 'Auto skica', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-08-01 14:19:28', '0000-00-00 00:00:00', '', 0, 'http://renatogr.cf/?p=160', 0, 'post', '', 0),
(161, 1, '2021-08-01 14:20:18', '0000-00-00 00:00:00', '{\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [\n                "archives-2",\n                "meta-2",\n                "search-2",\n                "categories-2",\n                "recent-posts-2",\n                "recent-comments-2",\n                "um_search_widget-3",\n                "text-3"\n            ],\n            "sidebar-1": [\n                "text-2",\n                "search-4"\n            ],\n            "sidebar-2": [\n                "text-3"\n            ],\n            "about-sidebar": [\n                "um_search_widget-3"\n            ],\n            "footer-2": [\n                "bp_groups_widget-3",\n                "bp_core_login_widget-3",\n                "bp_core_whos_online_widget-3"\n            ]\n        },\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:20:18"\n    },\n    "pen::nav_menu_locations[primary]": {\n        "value": 4,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:20:18"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '05676634-83f4-46ee-9fea-bb8d3b453913', '', '', '2021-08-01 14:20:18', '0000-00-00 00:00:00', '', 0, 'http://renatogr.cf/?p=161', 0, 'customize_changeset', '', 0),
(131, 1, '2021-06-18 09:47:25', '2021-06-18 09:47:25', '', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2021-06-18 09:47:29', '2021-06-18 09:47:29', '', 0, 'http://renatogr.cf/?page_id=131', 0, 'page', '', 0),
(132, 1, '2021-06-18 09:47:25', '2021-06-18 09:47:25', '', 'Register', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2021-06-18 09:47:25', '2021-06-18 09:47:25', '', 131, 'http://renatogr.cf/?p=132', 0, 'revision', '', 0),
(133, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 'Aktivnost', '', 'publish', 'closed', 'closed', '', 'aktivnost', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?page_id=133', 0, 'page', '', 0),
(134, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', 'Welcome to {{site.name}}!\n\nVisit your <a href="{{{profile.url}}}">profile</a>, where you can tell us more about yourself, change your preferences, or make new connections, to get started.\n\nForgot your password? Don''t worry, you can reset it with your email address from <a href="{{{lostpassword.url}}}">this page</a> of our site', '[{{{site.name}}}] Welcome!', 'Welcome to {{site.name}}!\n\nVisit your profile, where you can tell us more about yourself, change your preferences, or make new connections, to get started: {{{profile.url}}}\n\nForgot your password? Don''t worry, you can reset it with your email address from this page of our site: {{{lostpassword.url}}}', 'publish', 'closed', 'closed', '', 'site-name-welcome', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=134', 0, 'bp-email', '', 0),
(135, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', '{{poster.name}} replied to one of your updates:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{thread.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} replied to one of your updates', '{{poster.name}} replied to one of your updates:\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-replied-to-one-of-your-updates', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=135', 0, 'bp-email', '', 0),
(136, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', '{{poster.name}} replied to one of your comments:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{thread.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} replied to one of your comments', '{{poster.name}} replied to one of your comments:\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-replied-to-one-of-your-comments', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=136', 0, 'bp-email', '', 0),
(137, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', '{{poster.name}} mentioned you in a status update:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{mentioned.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} mentioned you in a status update', '{{poster.name}} mentioned you in a status update:\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{mentioned.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-mentioned-you-in-a-status-update', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=137', 0, 'bp-email', '', 0),
(138, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', '{{poster.name}} mentioned you in the group "{{group.name}}":\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{mentioned.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} mentioned you in an update', '{{poster.name}} mentioned you in the group "{{group.name}}":\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{mentioned.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-mentioned-you-in-an-update', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=138', 0, 'bp-email', '', 0),
(139, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', 'Thanks for registering!\n\nTo complete the activation of your account, go to the following link and click on the <strong>Activate</strong> button:\n<a href="{{{activate.url}}}">{{{activate.url}}}</a>\n\nIf the ''Activation Key'' field is empty, copy and paste the following into the field - {{key}}', '[{{{site.name}}}] Activate your account', 'Thanks for registering!\n\nTo complete the activation of your account, go to the following link and click on the ''Activate'' button: {{{activate.url}}}\n\nIf the ''Activation Key'' field is empty, copy and paste the following into the field - {{key}}', 'publish', 'closed', 'closed', '', 'site-name-activate-your-account', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=139', 0, 'bp-email', '', 0),
(140, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', '<a href="{{{initiator.url}}}">{{initiator.name}}</a> wants to add you as a friend.\n\nTo accept this request and manage all of your pending requests, visit: <a href="{{{friend-requests.url}}}">{{{friend-requests.url}}}</a>', '[{{{site.name}}}] New friendship request from {{initiator.name}}', '{{initiator.name}} wants to add you as a friend.\n\nTo accept this request and manage all of your pending requests, visit: {{{friend-requests.url}}}\n\nTo view {{initiator.name}}''s profile, visit: {{{initiator.url}}}', 'publish', 'closed', 'closed', '', 'site-name-new-friendship-request-from-initiator-name', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=140', 0, 'bp-email', '', 0),
(141, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', '<a href="{{{friendship.url}}}">{{friend.name}}</a> accepted your friend request.', '[{{{site.name}}}] {{friend.name}} accepted your friendship request', '{{friend.name}} accepted your friend request.\n\nTo learn more about them, visit their profile: {{{friendship.url}}}', 'publish', 'closed', 'closed', '', 'site-name-friend-name-accepted-your-friendship-request', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=141', 0, 'bp-email', '', 0),
(142, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', 'Group details for the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot; were updated:\n<blockquote>{{changed_text}}</blockquote>', '[{{{site.name}}}] Group details updated', 'Group details for the group "{{group.name}}" were updated:\n\n{{changed_text}}\n\nTo view the group, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-group-details-updated', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=142', 0, 'bp-email', '', 0),
(143, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', '<a href="{{{inviter.url}}}">{{inviter.name}}</a> has invited you to join the group: &quot;{{group.name}}&quot;.\n\n{{invite.message}}\n\n<a href="{{{invites.url}}}">Go here to accept your invitation</a> or <a href="{{{group.url}}}">visit the group</a> to learn more.', '[{{{site.name}}}] You have an invitation to the group: "{{group.name}}"', '{{inviter.name}} has invited you to join the group: "{{group.name}}".\n\n{{invite.message}}\n\nTo accept your invitation, visit: {{{invites.url}}}\n\nTo learn more about the group, visit: {{{group.url}}}.\nTo view {{inviter.name}}''s profile, visit: {{{inviter.url}}}', 'publish', 'closed', 'closed', '', 'site-name-you-have-an-invitation-to-the-group-group-name', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=143', 0, 'bp-email', '', 0),
(144, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', 'You have been promoted to <b>{{promoted_to}}</b> in the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot;.', '[{{{site.name}}}] You have been promoted in the group: "{{group.name}}"', 'You have been promoted to {{promoted_to}} in the group: "{{group.name}}".\n\nTo visit the group, go to: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-you-have-been-promoted-in-the-group-group-name', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=144', 0, 'bp-email', '', 0),
(145, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', '<a href="{{{profile.url}}}">{{requesting-user.name}}</a> wants to join the group &quot;{{group.name}}&quot;.\n {{request.message}}\n As you are an administrator of this group, you must either accept or reject the membership request.\n\n<a href="{{{group-requests.url}}}">Go here to manage this</a> and all other pending requests.', '[{{{site.name}}}] Membership request for group: {{group.name}}', '{{requesting-user.name}} wants to join the group "{{group.name}}". As you are the administrator of this group, you must either accept or reject the membership request.\n\nTo manage this and all other pending requests, visit: {{{group-requests.url}}}\n\nTo view {{requesting-user.name}}''s profile, visit: {{{profile.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=145', 0, 'bp-email', '', 0),
(146, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', '{{sender.name}} sent you a new message: &quot;{{usersubject}}&quot;\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{message.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] New message from {{sender.name}}', '{{sender.name}} sent you a new message: "{{usersubject}}"\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{message.url}}}', 'publish', 'closed', 'closed', '', 'site-name-new-message-from-sender-name', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=146', 0, 'bp-email', '', 0),
(147, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', 'You recently changed the email address associated with your account on {{site.name}} to {{user.email}}. If this is correct, <a href="{{{verify.url}}}">go here to confirm the change</a>.\n\nOtherwise, you can safely ignore and delete this email if you have changed your mind, or if you think you have received this email in error.', '[{{{site.name}}}] Verify your new email address', 'You recently changed the email address associated with your account on {{site.name}} to {{user.email}}. If this is correct, go to the following link to confirm the change: {{{verify.url}}}\n\nOtherwise, you can safely ignore and delete this email if you have changed your mind, or if you think you have received this email in error.', 'publish', 'closed', 'closed', '', 'site-name-verify-your-new-email-address', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=147', 0, 'bp-email', '', 0),
(148, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', 'Your membership request for the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot; has been accepted.', '[{{{site.name}}}] Membership request for group "{{group.name}}" accepted', 'Your membership request for the group "{{group.name}}" has been accepted.\n\nTo view the group, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name-accepted', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=148', 0, 'bp-email', '', 0),
(149, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', 'Your membership request for the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot; has been rejected.', '[{{{site.name}}}] Membership request for group "{{group.name}}" rejected', 'Your membership request for the group "{{group.name}}" has been rejected.\n\nTo request membership again, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name-rejected', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=149', 0, 'bp-email', '', 0),
(150, 1, '2021-06-18 10:02:28', '2021-06-18 10:02:28', '<a href="{{{inviter.url}}}">{{inviter.name}}</a> has invited you to join the site: &quot;{{site.name}}&quot;.\n\n{{usermessage}}\n\n<a href="{{{invite.accept_url}}}">Accept your invitation</a> or <a href="{{{site.url}}}">visit the site</a> to learn more.', '{{inviter.name}} has invited you to join {{site.name}}', '{{inviter.name}} has invited you to join the site "{{site.name}}".\n\n{{usermessage}}\n\nTo accept your invitation, visit: {{{invite.accept_url}}}\n\nTo learn more about the site, visit: {{{site.url}}}.\nTo view {{inviter.name}}''s profile, visit: {{{inviter.url}}}', 'publish', 'closed', 'closed', '', 'inviter-name-has-invited-you-to-join-site-name', '', '', '2021-06-18 10:02:28', '2021-06-18 10:02:28', '', 0, 'http://renatogr.cf/?post_type=bp-email&p=150', 0, 'bp-email', '', 0),
(151, 1, '2021-06-18 10:03:57', '2021-06-18 10:03:57', '', 'Grupe', '', 'publish', 'closed', 'closed', '', 'grupe', '', '', '2021-06-18 10:03:57', '2021-06-18 10:03:57', '', 0, 'http://renatogr.cf/?page_id=151', 0, 'page', '', 0),
(153, 1, '2021-06-18 16:37:53', '2021-06-18 16:37:53', '<!-- wp:paragraph -->\n<p>Što je kocka?  Kocka je program za okretanje virtualne kocke.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Upute se nalaze u samom programu a možete ih vidjeti klikom na "?"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Par slika:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {"ids":[155,156],"linkTo":"none"} -->\n<figure class="wp-block-gallery columns-2 is-cropped"><ul class="blocks-gallery-grid"><li class="blocks-gallery-item"><figure><img src="http://renatogr.cf/wp-content/uploads/2021/06/kepcr-2.png" alt="" data-id="155" data-link="http://renatogr.cf/?attachment_id=155" class="wp-image-155"/></figure></li><li class="blocks-gallery-item"><figure><img src="http://renatogr.cf/wp-content/uploads/2021/06/kepcr-1-1.png" alt="" data-id="156" data-full-url="http://renatogr.cf/wp-content/uploads/2021/06/kepcr-1-1.png" data-link="http://renatogr.cf/?attachment_id=156" class="wp-image-156"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:buttons -->\n<div class="wp-block-buttons"><!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="https://mega.nz/file/DFtAhJrL#tDyzo1ReQ2xoWg2OEZT5vodYwr2k9mplOzwXCkDC2R4" target="_blank" rel="noreferrer noopener">Preuzmi kocke</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Kocka', '', 'publish', 'closed', 'closed', '', 'kocka', '', '', '2021-06-18 16:45:16', '2021-06-18 16:45:16', '', 0, 'http://renatogr.cf/?page_id=153', 0, 'page', '', 0),
(154, 1, '2021-06-18 16:36:45', '2021-06-18 16:36:45', '', 'kepcr-1', '', 'inherit', 'open', 'closed', '', 'kepcr-1', '', '', '2021-06-18 16:36:45', '2021-06-18 16:36:45', '', 153, 'http://renatogr.cf/wp-content/uploads/2021/06/kepcr-1.png', 0, 'attachment', 'image/png', 0),
(155, 1, '2021-06-18 16:36:47', '2021-06-18 16:36:47', '', 'kepcr-2', '', 'inherit', 'open', 'closed', '', 'kepcr-2', '', '', '2021-06-18 16:36:47', '2021-06-18 16:36:47', '', 153, 'http://renatogr.cf/wp-content/uploads/2021/06/kepcr-2.png', 0, 'attachment', 'image/png', 0),
(156, 1, '2021-06-18 16:37:25', '2021-06-18 16:37:25', '', 'kepcr-1-1', '', 'inherit', 'open', 'closed', '', 'kepcr-1-1', '', '', '2021-06-18 16:37:25', '2021-06-18 16:37:25', '', 153, 'http://renatogr.cf/wp-content/uploads/2021/06/kepcr-1-1.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2021-05-05 12:16:57', '2021-05-05 12:16:57', '', 'Početna stranica', '', 'publish', 'closed', 'closed', '', 'pocetna-stranica', '', '', '2021-05-05 12:16:57', '2021-05-05 12:16:57', '', 0, 'http://renatogr.cf/?p=17', 0, 'nav_menu_item', '', 0),
(21, 1, '2021-05-05 12:16:57', '2021-05-05 12:16:57', '', 'Početna stranica', '', 'publish', 'closed', 'closed', '', 'pocetna-stranica-2', '', '', '2021-05-05 12:16:57', '2021-05-05 12:16:57', '', 0, 'http://renatogr.cf/?p=21', 0, 'nav_menu_item', '', 0),
(58, 1, '2021-08-04 09:51:02', '2021-05-05 13:29:11', '', 'Prijava', '', 'publish', 'closed', 'closed', '', '58', '', '', '2021-08-04 09:51:02', '2021-08-04 09:51:02', '', 0, 'http://renatogr.cf/?p=58', 1, 'nav_menu_item', '', 0),
(177, 1, '2021-08-04 09:49:33', '0000-00-00 00:00:00', '', 'Grupe', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-08-04 09:49:33', '0000-00-00 00:00:00', '', 0, 'http://renatogr.cf/?p=177', 1, 'nav_menu_item', '', 0),
(45, 1, '2021-05-05 13:26:16', '2021-05-05 13:26:16', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Telašćica</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="https://mega.nz/file/PY1GRaTS#OMTtn4cx8E-OkBIwTeiJL8v2Iz9SJUsyLcoeq2tguF8" target="_blank" rel="noreferrer noopener">https://mega.nz/file/PY1GRaTS#OMTtn4cx8E-OkBIwTeiJL8v2Iz9SJUsyLcoeq2tguF8</a></p>\n<!-- /wp:paragraph -->', 'Powerpoint', '', 'draft', 'closed', 'closed', '', 'powerpoint', '', '', '2021-06-18 16:39:10', '2021-06-18 16:39:10', '', 0, 'http://renatogr.cf/?page_id=45', 0, 'page', '', 0),
(108, 1, '2021-06-16 16:09:39', '2021-06-16 16:09:39', '<!-- wp:paragraph -->\n<p>ITM=Indeks tjelesne mase </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Upute:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>kada pokrenete program odaberite Hrvatski standard</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. U polje za visinu unesite vašu visinu u centimetrima a u polje za masu  unesete svoju težinu u kilogramima</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3. Kada unesete zadane podatke, pritisnite "Izraćunaj" i dobiti ćete svoj indeks tjelesne mase</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>VAŽNO: Ukoliko koristite Windows 8,8.1,10,11 windows defender će vam govoriti da je aplikacija nesigurna. Kada i ako vam to izađe pritisnite više i svejedno pokreni. A zašto to izlazi? Zato štoc aplikacija nije pravilno potpisana, tako da bez straha od virusa i ostalih zloćudnih softwera.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class="wp-block-buttons"><!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="" target="_blank" rel="noreferrer noopener">Preuzmi</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'ITM/BMI kalkulator', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-06-16 16:09:39', '2021-06-16 16:09:39', '', 107, 'http://renatogr.cf/?p=108', 0, 'revision', '', 0),
(118, 1, '2021-06-17 14:59:52', '2021-06-17 14:59:52', '<!-- wp:paragraph -->\n<p>RedLive je desktop aplikacija, služi za dijeljenje videozapisa. Trenutno je u beta verziju</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class="wp-block-buttons"><!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="https://carnet-my.sharepoint.com/personal/renato_grubesic_skole_hr/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Frenato%5Fgrubesic%5Fskole%5Fhr%2FDocuments%2FSajt%2FRedlive%20betatest%201%2Eexe&amp;parent=%2Fpersonal%2Frenato%5Fgrubesic%5Fskole%5Fhr%2FDocuments%2FSajt">RedLive BETA TEST1</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'RedLive', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2021-06-17 14:59:52', '2021-06-17 14:59:52', '', 117, 'http://renatogr.cf/?p=118', 0, 'revision', '', 0),
(112, 1, '2021-06-16 16:24:44', '2021-06-16 16:24:44', '<!-- wp:paragraph -->\n<p>ITM/BMI Kalkulator</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class="wp-block-buttons"><!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="http://renatogr.cf/?page_id=107">Pogledaj</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'Projekti', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2021-06-16 16:24:44', '2021-06-16 16:24:44', '', 104, 'http://renatogr.cf/?p=112', 0, 'revision', '', 0),
(110, 1, '2021-06-16 16:15:03', '2021-06-16 16:15:03', '<!-- wp:paragraph -->\n<p>ITM=Indeks tjelesne mase </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Upute:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>kada pokrenete program odaberite Hrvatski standard</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. U polje za visinu unesite vašu visinu u centimetrima a u polje za masu  unesete svoju težinu u kilogramima</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3. Kada unesete zadane podatke, pritisnite "Izraćunaj" i dobiti ćete svoj indeks tjelesne mase</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>VAŽNO: Ukoliko koristite Windows 8,8.1,10,11 windows defender će vam govoriti da je aplikacija nesigurna. Kada i ako vam to izađe pritisnite više i svejedno pokreni. A zašto to izlazi? Zato štoc aplikacija nije pravilno potpisana, tako da bez straha od virusa i ostalih zloćudnih softwera.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class="wp-block-buttons"><!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="https://carnet-my.sharepoint.com/:u:/g/personal/renato_grubesic_skole_hr/EdLIJtYCgxJLpmT_y5uX9iEBgtyG3zsj_hl2AJdJ5tSiyw?e=8JUmbL" target="_blank" rel="noreferrer noopener">Preuzmi</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'ITM/BMI kalkulator', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-06-16 16:15:03', '2021-06-16 16:15:03', '', 107, 'http://renatogr.cf/?p=110', 0, 'revision', '', 0),
(121, 1, '2021-06-17 15:10:58', '2021-06-17 15:10:58', '<!-- wp:buttons -->\n<div class="wp-block-buttons"><!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="http://renatogr.cf/?page_id=107">ITM/BMI Kalkulator</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="http://renatogr.cf/?page_id=117">RedLive</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Projekti', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2021-06-17 15:10:58', '2021-06-17 15:10:58', '', 104, 'http://renatogr.cf/?p=121', 0, 'revision', '', 0),
(120, 1, '2021-06-17 15:09:50', '2021-06-17 15:09:50', '<!-- wp:buttons -->\n<div class="wp-block-buttons"><!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="http://renatogr.cf/?page_id=107">ITM/BMI Kalkulator</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link">RedLive</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Projekti', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2021-06-17 15:09:50', '2021-06-17 15:09:50', '', 104, 'http://renatogr.cf/?p=120', 0, 'revision', '', 0),
(122, 1, '2021-06-17 15:21:24', '2021-06-17 15:21:24', '<!-- wp:paragraph -->\n<p>Da, RedLive beta test 1 više nije podržan. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Što to znaći? To znaći da:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-moći ćete se prijaviti</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći gledati videozapise i  prijenose uživo</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći otići na svoj kanal</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete se moći pretplatiti niti gledati svoje pretplate</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći pretraživati ništa</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći gledati ni pisati poruke </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ali RedLive nije završio svoju karijeru, uskoro izlazi prva verzija programa. Ažuriranja će se dešavati vrlo ćesto tako da sjetite se u toku ovog dana ukoliko budete koristili novu verziju da se  ćešće odjavljujete i prijavljujete!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dugme za preuzimanje možete pronaći u opciji "Projekti"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'RedLive beta kraj podrške', '', 'trash', 'open', 'open', '', 'redlive-beta-kraj-podrske__trashed', '', '', '2021-07-07 20:47:47', '2021-07-07 20:47:47', '', 0, 'http://renatogr.cf/?p=122', 0, 'post', '', 0),
(114, 1, '2021-06-16 16:31:38', '2021-06-16 16:31:38', '<!-- wp:paragraph -->\n<p>ITM=Indeks tjelesne mase/BMI= Body mass index</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Upute:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1.Kada pokrenete program odaberite Hrvatski standard</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. U polje za visinu unesite vašu visinu u centimetrima a u polje za masu  unesete svoju težinu u kilogramima</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3. Kada unesete zadane podatke, pritisnite "Izraćunaj" i dobiti ćete svoj indeks tjelesne mase</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>VAŽNO: Ukoliko koristite Windows 8,8.1,10,11 windows defender će vam govoriti da je aplikacija nesigurna. Kada i ako vam to izađe pritisnite više i svejedno pokreni. A zašto to izlazi? Zato što aplikacija nije pravilno potpisana, tako da bez straha od virusa i ostalih zloćudnih softwera.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Podržani operativvni sustavi:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows: 7 x64 x32</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows:8 x64 x32</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows:8.1 x64 x32</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows:10 x64 x32</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows:11 (Uskoro) </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Linux</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>MacOS: 64bit</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class="wp-block-buttons"><!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="https://carnet-my.sharepoint.com/:u:/g/personal/renato_grubesic_skole_hr/EdLIJtYCgxJLpmT_y5uX9iEBgtyG3zsj_hl2AJdJ5tSiyw?e=8JUmbL" target="_blank" rel="noreferrer noopener">Preuzmi</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'ITM/BMI kalkulator', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-06-16 16:31:38', '2021-06-16 16:31:38', '', 107, 'http://renatogr.cf/?p=114', 0, 'revision', '', 0),
(35, 1, '2021-05-05 12:23:00', '2021-05-05 12:23:00', '', 'Početak', '', 'draft', 'closed', 'closed', '', 'pocetak', '', '', '2021-06-18 16:39:01', '2021-06-18 16:39:01', '', 0, 'http://renatogr.cf/?page_id=35', 0, 'page', '', 0),
(36, 1, '2021-05-05 12:23:00', '2021-05-05 12:23:00', '', 'Početak', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2021-05-05 12:23:00', '2021-05-05 12:23:00', '', 35, 'http://renatogr.cf/?p=36', 0, 'revision', '', 0),
(162, 1, '2021-08-01 14:21:25', '2021-08-01 14:21:25', '{\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [\n                "archives-2",\n                "meta-2",\n                "search-2",\n                "categories-2",\n                "recent-posts-2",\n                "recent-comments-2",\n                "um_search_widget-3",\n                "text-3"\n            ],\n            "sidebar-1": [\n                "text-2",\n                "search-4"\n            ],\n            "sidebar-2": [\n                "text-3"\n            ],\n            "about-sidebar": [\n                "um_search_widget-3"\n            ],\n            "footer-2": [\n                "bp_groups_widget-3",\n                "bp_core_login_widget-3",\n                "bp_core_whos_online_widget-3"\n            ]\n        },\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:21:25"\n    },\n    "pen::nav_menu_locations[primary]": {\n        "value": 4,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2021-08-01 14:21:25"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c0f57146-2894-4a06-b2ab-0646cbc48f40', '', '', '2021-08-01 14:21:25', '2021-08-01 14:21:25', '', 0, 'http://renatogr.cf/renato/2021/08/14/01/21/25/162/c0f57146-2894-4a06-b2ab-0646cbc48f40/uncategorized/', 0, 'customize_changeset', '', 0),
(39, 1, '2021-05-05 12:50:19', '2021-05-05 12:50:19', '', 'Default Registration', '', 'publish', 'closed', 'closed', '', 'default-registration', '', '', '2021-05-05 12:50:19', '2021-05-05 12:50:19', '', 0, 'http://renatogr.cf/?um_form=default-registration', 0, 'um_form', '', 0),
(40, 1, '2021-05-05 12:50:19', '2021-05-05 12:50:19', '', 'Default Login', '', 'publish', 'closed', 'closed', '', 'default-login', '', '', '2021-05-05 12:50:19', '2021-05-05 12:50:19', '', 0, 'http://renatogr.cf/?um_form=default-login', 0, 'um_form', '', 0),
(41, 1, '2021-05-05 12:50:19', '2021-05-05 12:50:19', '', 'Default Profile', '', 'publish', 'closed', 'closed', '', 'default-profile', '', '', '2021-05-05 12:50:19', '2021-05-05 12:50:19', '', 0, 'http://renatogr.cf/?um_form=default-profile', 0, 'um_form', '', 0),
(42, 1, '2021-05-05 12:50:19', '2021-05-05 12:50:19', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2021-05-05 12:50:19', '2021-05-05 12:50:19', '', 0, 'http://renatogr.cf/?um_directory=members', 0, 'um_directory', '', 0),
(46, 1, '2021-05-05 13:26:16', '2021-05-05 13:26:16', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Telašćica</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="https://mega.nz/file/uRMm0BQB#0qn72-rqR4Cp8yM-U0EOY0avz3RvXjQJh9NEuiSctqI">https://mega.nz/file/uRMm0BQB#0qn72-rqR4Cp8yM-U0EOY0avz3RvXjQJh9NEuiSctqI</a></p>\n<!-- /wp:paragraph -->', 'Powerpoint', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-05-05 13:26:16', '2021-05-05 13:26:16', '', 45, 'http://renatogr.cf/?p=46', 0, 'revision', '', 0),
(47, 1, '2021-05-05 13:26:33', '2021-05-05 13:26:33', '[ultimatemember form_id="41"]', 'User', '', 'draft', 'closed', 'closed', '', 'user', '', '', '2021-06-18 16:38:49', '2021-06-18 16:38:49', '', 0, 'http://renatogr.cf/?page_id=47', 0, 'page', '', 0),
(48, 1, '2021-05-05 13:26:33', '2021-05-05 13:26:33', '[ultimatemember form_id="40"]', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2021-05-05 13:26:33', '2021-05-05 13:26:33', '', 0, 'http://renatogr.cf/?page_id=48', 0, 'page', '', 0),
(49, 1, '2021-05-05 13:26:33', '2021-05-05 13:26:33', '[ultimatemember form_id="39"]', 'Register', '', 'draft', 'closed', 'closed', '', 'register', '', '', '2021-06-18 16:38:42', '2021-06-18 16:38:42', '', 0, 'http://renatogr.cf/?page_id=49', 0, 'page', '', 0),
(50, 1, '2021-05-05 13:26:33', '2021-05-05 13:26:33', '[ultimatemember form_id="42"]', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2021-05-05 13:26:33', '2021-05-05 13:26:33', '', 0, 'http://renatogr.cf/?page_id=50', 0, 'page', '', 0),
(51, 1, '2021-05-05 13:26:33', '2021-05-05 13:26:33', '', 'Logout', '', 'publish', 'closed', 'closed', '', 'logout', '', '', '2021-05-05 13:26:33', '2021-05-05 13:26:33', '', 0, 'http://renatogr.cf/?page_id=51', 0, 'page', '', 0),
(52, 1, '2021-05-05 13:26:33', '2021-05-05 13:26:33', '[ultimatemember_account]', 'Account', '', 'publish', 'closed', 'closed', '', 'account', '', '', '2021-05-05 13:26:33', '2021-05-05 13:26:33', '', 0, 'http://renatogr.cf/?page_id=52', 0, 'page', '', 0),
(53, 1, '2021-05-05 13:26:33', '2021-05-05 13:26:33', '[ultimatemember_password]', 'Password Reset', '', 'publish', 'closed', 'closed', '', 'password-reset', '', '', '2021-05-05 13:26:33', '2021-05-05 13:26:33', '', 0, 'http://renatogr.cf/?page_id=53', 0, 'page', '', 0),
(127, 1, '2021-06-17 15:27:24', '2021-06-17 15:27:24', '<!-- wp:paragraph -->\n<p>Da, RedLive beta test 1 više nije podržan. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Što to znaći? To znaći da:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-moći ćete se prijaviti</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći gledati videozapise i  prijenose uživo</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći otići na svoj kanal</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete se moći pretplatiti niti gledati svoje pretplate</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći pretraživati ništa</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći gledati ni pisati poruke </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ali RedLive nije završio svoju karijeru, uskoro izlazi prva verzija programa. Ažuriranja će se dešavati vrlo ćesto tako da sjetite se u toku ovog dana ukoliko budete koristili novu verziju da se  ćešće odjavljujete i prijavljujete!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dugme za preuzimanje možete pronaći u opciji "Projekti"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'RedLive beta kraj podrške', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2021-06-17 15:27:24', '2021-06-17 15:27:24', '', 122, 'http://renatogr.cf/?p=127', 0, 'revision', '', 0),
(123, 1, '2021-06-17 15:21:24', '2021-06-17 15:21:24', '<!-- wp:paragraph -->\n<p>Da, RedLive beta test 1 više nijue podržan. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Što to znaći? to znaći da:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-moći ćete se prijaviti</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete mogu gledati videozapise i  prijenose uživo</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći otići na svoj kanal</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete se moći pretplatiti niti gledati svoje pretplate</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći pretraživati ništa</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći gledati ni pisati poruke </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ali red link nije završio svoju karijeru, uskoro izlazi prva verzija programa. Ažuriranja će se dešavati vrlo ćesto tako da sjetite se u toku ovog dana ukoliko budete koristili novu verziju da se  ćešće odjavljujete i prijavljujete!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dugme za preuzimanje možete pronaći u opciji "Projekti"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'RedLive beta kraj podrške', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2021-06-17 15:21:24', '2021-06-17 15:21:24', '', 122, 'http://renatogr.cf/?p=123', 0, 'revision', '', 0),
(124, 1, '2021-06-17 15:21:48', '2021-06-17 15:21:48', '<!-- wp:paragraph -->\n<p>Da, RedLive beta test 1 više nije podržan. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Što to znaći? to znaći da:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-moći ćete se prijaviti</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete mogu gledati videozapise i  prijenose uživo</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći otići na svoj kanal</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete se moći pretplatiti niti gledati svoje pretplate</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći pretraživati ništa</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći gledati ni pisati poruke </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ali red link nije završio svoju karijeru, uskoro izlazi prva verzija programa. Ažuriranja će se dešavati vrlo ćesto tako da sjetite se u toku ovog dana ukoliko budete koristili novu verziju da se  ćešće odjavljujete i prijavljujete!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dugme za preuzimanje možete pronaći u opciji "Projekti"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'RedLive beta kraj podrške', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2021-06-17 15:21:48', '2021-06-17 15:21:48', '', 122, 'http://renatogr.cf/?p=124', 0, 'revision', '', 0);
INSERT INTO `wp5t_posts` VALUES
(125, 1, '2021-06-17 15:22:54', '2021-06-17 15:22:54', '<!-- wp:paragraph -->\n<p>Da, RedLive beta test 1 više nije podržan. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Što to znaći? To znaći da:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-moći ćete se prijaviti</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete mogu gledati videozapise i  prijenose uživo</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći otići na svoj kanal</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete se moći pretplatiti niti gledati svoje pretplate</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći pretraživati ništa</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći gledati ni pisati poruke </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ali red link nije završio svoju karijeru, uskoro izlazi prva verzija programa. Ažuriranja će se dešavati vrlo ćesto tako da sjetite se u toku ovog dana ukoliko budete koristili novu verziju da se  ćešće odjavljujete i prijavljujete!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dugme za preuzimanje možete pronaći u opciji "Projekti"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'RedLive beta kraj podrške', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2021-06-17 15:22:54', '2021-06-17 15:22:54', '', 122, 'http://renatogr.cf/?p=125', 0, 'revision', '', 0),
(126, 1, '2021-06-17 15:23:26', '2021-06-17 15:23:26', '<!-- wp:paragraph -->\n<p>Da, RedLive beta test 1 više nije podržan. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Što to znaći? To znaći da:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-moći ćete se prijaviti</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći gledati videozapise i  prijenose uživo</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći otići na svoj kanal</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete se moći pretplatiti niti gledati svoje pretplate</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći pretraživati ništa</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>-nećete moći gledati ni pisati poruke </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ali red link nije završio svoju karijeru, uskoro izlazi prva verzija programa. Ažuriranja će se dešavati vrlo ćesto tako da sjetite se u toku ovog dana ukoliko budete koristili novu verziju da se  ćešće odjavljujete i prijavljujete!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dugme za preuzimanje možete pronaći u opciji "Projekti"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'RedLive beta kraj podrške', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2021-06-17 15:23:26', '2021-06-17 15:23:26', '', 122, 'http://renatogr.cf/?p=126', 0, 'revision', '', 0),
(59, 1, '2021-08-04 09:51:03', '2021-05-05 13:29:11', '', 'Registracija', '', 'publish', 'closed', 'closed', '', '59', '', '', '2021-08-04 09:51:03', '2021-08-04 09:51:03', '', 0, 'http://renatogr.cf/?p=59', 3, 'nav_menu_item', '', 0),
(60, 1, '2021-08-04 09:51:03', '2021-05-05 13:29:11', '', 'Drugi korisnici', '', 'publish', 'closed', 'closed', '', '60', '', '', '2021-08-04 09:51:03', '2021-08-04 09:51:03', '', 0, 'http://renatogr.cf/?p=60', 2, 'nav_menu_item', '', 0),
(176, 1, '2021-08-04 09:49:33', '0000-00-00 00:00:00', '', 'Messages', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-08-04 09:49:33', '0000-00-00 00:00:00', '', 0, 'http://renatogr.cf/?p=176', 1, 'nav_menu_item', '', 0),
(62, 1, '2021-08-04 09:51:03', '2021-05-05 13:29:12', '', 'Moj račun', '', 'publish', 'closed', 'closed', '', '62', '', '', '2021-08-04 09:51:03', '2021-08-04 09:51:03', '', 0, 'http://renatogr.cf/?p=62', 5, 'nav_menu_item', '', 0),
(107, 1, '2021-06-16 16:09:39', '2021-06-16 16:09:39', '<!-- wp:paragraph -->\n<p>ITM=Indeks tjelesne mase/BMI= Body mass index</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Upute:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1.Kada pokrenete program odaberite Hrvatski standard</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. U polje za visinu unesite vašu visinu u centimetrima a u polje za masu  unesete svoju težinu u kilogramima</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3. Kada unesete zadane podatke, pritisnite "Izraćunaj" i dobiti ćete svoj indeks tjelesne mase</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>VAŽNO: Ukoliko koristite Windows 8,8.1,10,11 windows defender će vam govoriti da je aplikacija nesigurna. Kada i ako vam to izađe pritisnite više i svejedno pokreni. A zašto to izlazi? Zato što aplikacija nije pravilno potpisana, tako da bez straha od virusa i ostalih zloćudnih softwera.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Podržani operativvni sustavi:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows: 7 x64 x32</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows:8 x64 x32</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows:8.1 x64 x32</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows:10 x64 x32</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows:11 (Uskoro) </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Linux</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>MacOS: 64bit</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class="wp-block-buttons"><!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="https://carnet-my.sharepoint.com/:u:/g/personal/renato_grubesic_skole_hr/EdLIJtYCgxJLpmT_y5uX9iEBgtyG3zsj_hl2AJdJ5tSiyw?e=8JUmbL" target="_blank" rel="noreferrer noopener">Preuzmi</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ukoliko trebate pomoć možete me kontaktirati na:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Windows Live Messenger/MSN Messenger: renato.grubesic@aol.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>AOL Instant Messenger/AIM: Renato</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>E-mail: renato.grubesic@aol.com</p>\n<!-- /wp:paragraph -->', 'ITM/BMI kalkulator', '', 'publish', 'closed', 'closed', '', 'itm-bmi-kalkulator', '', '', '2021-06-16 16:35:03', '2021-06-16 16:35:03', '', 0, 'http://renatogr.cf/?page_id=107', 0, 'page', '', 0),
(64, 1, '2021-05-05 13:31:22', '2021-05-05 13:31:22', '', 'R3d73a07fb506b9bc927816c3df416652', '', 'inherit', 'open', 'closed', '', 'r3d73a07fb506b9bc927816c3df416652', '', '', '2021-05-05 13:31:22', '2021-05-05 13:31:22', '', 0, 'http://renatogr.cf/wp-content/uploads/2021/05/R3d73a07fb506b9bc927816c3df416652.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2021-05-05 13:31:31', '2021-05-05 13:31:31', 'http://renatogr.cf/wp-content/uploads/2021/05/cropped-2020-landscape-1.png', 'cropped-2020-landscape-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-2020-landscape-1-png', '', '', '2021-05-05 13:31:31', '2021-05-05 13:31:31', '', 0, 'http://renatogr.cf/wp-content/uploads/2021/05/cropped-2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(172, 1, '2021-08-01 14:52:02', '2021-08-01 14:52:02', '<!-- wp:video {"id":170} -->\n<figure class="wp-block-video"><video controls src="http://renatogr.cf/wp-content/uploads/2021/08/VID_20210613_234602_317.mp4"></video></figure>\n<!-- /wp:video -->', 'Nemam ideju sto da objavim', '', 'publish', 'open', 'open', '', 'nemam-ideju-sto-da-objavim', '', '', '2021-08-01 14:52:05', '2021-08-01 14:52:05', '', 0, 'http://renatogr.cf/?p=172', 0, 'post', '', 0),
(173, 1, '2021-08-01 14:52:02', '2021-08-01 14:52:02', '<!-- wp:video {"id":170} -->\n<figure class="wp-block-video"><video controls src="http://renatogr.cf/wp-content/uploads/2021/08/VID_20210613_234602_317.mp4"></video></figure>\n<!-- /wp:video -->', 'Nemam ideju sto da objavim', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2021-08-01 14:52:02', '2021-08-01 14:52:02', '', 172, 'http://renatogr.cf/?p=173', 0, 'revision', '', 0),
(174, 1, '2021-08-04 09:11:03', '2021-08-04 09:11:03', '[]', '', '', 'trash', 'closed', 'closed', '', '0a8fb153-faeb-4c6b-b4b2-22113348c58e', '', '', '2021-08-04 09:11:03', '2021-08-04 09:11:03', '', 0, 'http://renatogr.cf/renato/2021/08/09/04/11/03/174/0a8fb153-faeb-4c6b-b4b2-22113348c58e/uncategorized/', 0, 'customize_changeset', '', 0),
(175, 1, '2021-08-04 09:51:03', '2021-08-04 09:48:31', ' ', '', '', 'publish', 'closed', 'closed', '', '175', '', '', '2021-08-04 09:51:03', '2021-08-04 09:51:03', '', 0, 'http://renatogr.cf/?p=175', 6, 'nav_menu_item', '', 0),
(71, 1, '2021-05-05 17:58:14', '2021-05-05 17:58:14', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Telašćica</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="https://mega.nz/file/PY1GRaTS#OMTtn4cx8E-OkBIwTeiJL8v2Iz9SJUsyLcoeq2tguF8" target="_blank" rel="noreferrer noopener">https://mega.nz/file/PY1GRaTS#OMTtn4cx8E-OkBIwTeiJL8v2Iz9SJUsyLcoeq2tguF8</a></p>\n<!-- /wp:paragraph -->', 'Powerpoint', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-05-05 17:58:14', '2021-05-05 17:58:14', '', 45, 'http://renatogr.cf/?p=71', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_signups`
--

CREATE TABLE `wp5t_signups` (
  `signup_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`signup_id`),
  KEY `activation_key` (`activation_key`),
  KEY `user_email` (`user_email`),
  KEY `user_login_email` (`user_login`,`user_email`),
  KEY `domain_path` (`domain`(140),`path`(51))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_signups`
--

INSERT INTO `wp5t_signups` VALUES
(1, '', '', '', 'MarisleaFufondrupovic', 'renato.grubesic@hotmail.com', '2021-08-04 10:03:01', '2021-08-04 10:08:56', 1, 'ePXF3Ecf0HBIFnW2fosLUoVGEW8zvE3F', 'a:3:{s:7:"field_1";s:23:"Marislea Fufondrupović";s:17:"profile_field_ids";s:1:"1";s:8:"password";s:34:"$P$BfsOMELQiqLZ964bl4Hu1N1KDpRZm2.";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_socialsnap_stats`
--

CREATE TABLE `wp5t_socialsnap_stats` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL,
  `count` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `network` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `url` varchar(2083) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5t_socialsnap_stats`
--

INSERT INTO `wp5t_socialsnap_stats` VALUES
(1, -1, 0, '2021-08-01 14:33:57', 'facebook', '', 'share', 'sidebar', '93.143.232.42', 'http://renatogr.cf/?customize_changeset_uuid=273e97f4-5048-4983-a90a-d68e1ef85f5e&customize_theme=pen&customize_messenger_channel=preview-1&customize_autosaved=on'),
(2, 172, 0, '2021-08-01 14:52:36', 'facebook', 'post', 'share', 'inline_content', '93.143.232.42', 'http://renatogr.cf/renato/2021/08/14/01/52/02/172/nemam-ideju-sto-da-objavim/uncategorized/'),
(3, 172, 0, '2021-08-01 18:39:22', 'facebook', 'post', 'share', 'inline_content', '212.15.177.18', 'http://renatogr.cf/renato/2021/08/14/01/52/02/172/nemam-ideju-sto-da-objavim/uncategorized/'),
(4, 172, 0, '2021-08-04 08:53:06', 'facebook', 'post', 'share', 'inline_content', '95.168.120.19', 'http://renatogr.cf/renato/2021/08/14/01/52/02/172/nemam-ideju-sto-da-objavim/uncategorized/');

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_termmeta`
--

CREATE TABLE `wp5t_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_terms`
--

CREATE TABLE `wp5t_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp5t_terms`
--

INSERT INTO `wp5t_terms` VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primarno', 'primarno', 0),
(3, 'Primarno (2)', 'primarno-2', 0),
(4, 'Izbornik za poveznice društvenih mreža', 'izbornik-za-poveznice-drustvenih-mreza', 0),
(6, 'RedLive', 'redlive', 0),
(7, 'core-user-activation', 'core-user-activation', 0),
(8, 'activity-comment', 'activity-comment', 0),
(9, 'activity-comment-author', 'activity-comment-author', 0),
(10, 'activity-at-message', 'activity-at-message', 0),
(11, 'groups-at-message', 'groups-at-message', 0),
(12, 'core-user-registration', 'core-user-registration', 0),
(13, 'friends-request', 'friends-request', 0),
(14, 'friends-request-accepted', 'friends-request-accepted', 0),
(15, 'groups-details-updated', 'groups-details-updated', 0),
(16, 'groups-invitation', 'groups-invitation', 0),
(17, 'groups-member-promoted', 'groups-member-promoted', 0),
(18, 'groups-membership-request', 'groups-membership-request', 0),
(19, 'messages-unread', 'messages-unread', 0),
(20, 'settings-verify-email-change', 'settings-verify-email-change', 0),
(21, 'groups-membership-request-accepted', 'groups-membership-request-accepted', 0),
(22, 'groups-membership-request-rejected', 'groups-membership-request-rejected', 0),
(23, 'bp-members-invitation', 'bp-members-invitation', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_term_relationships`
--

CREATE TABLE `wp5t_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp5t_term_relationships`
--

INSERT INTO `wp5t_term_relationships` VALUES
(106, 4, 0),
(17, 2, 0),
(138, 11, 0),
(140, 13, 0),
(136, 9, 0),
(21, 3, 0),
(137, 10, 0),
(139, 12, 0),
(135, 8, 0),
(60, 4, 0),
(58, 4, 0),
(59, 4, 0),
(122, 6, 0),
(62, 4, 0),
(134, 7, 0),
(141, 14, 0),
(142, 15, 0),
(143, 16, 0),
(144, 17, 0),
(145, 18, 0),
(146, 19, 0),
(147, 20, 0),
(148, 21, 0),
(149, 22, 0),
(150, 23, 0),
(172, 1, 0),
(175, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_term_taxonomy`
--

CREATE TABLE `wp5t_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp5t_term_taxonomy`
--

INSERT INTO `wp5t_term_taxonomy` VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 6),
(6, 6, 'category', '', 0, 0),
(7, 7, 'bp-email-type', 'Recipient has successfully activated an account.', 0, 1),
(8, 8, 'bp-email-type', 'A member has replied to an activity update that the recipient posted.', 0, 1),
(9, 9, 'bp-email-type', 'A member has replied to a comment on an activity update that the recipient posted.', 0, 1),
(10, 10, 'bp-email-type', 'Recipient was mentioned in an activity update.', 0, 1),
(11, 11, 'bp-email-type', 'Recipient was mentioned in a group activity update.', 0, 1),
(12, 12, 'bp-email-type', 'Recipient has registered for an account.', 0, 1),
(13, 13, 'bp-email-type', 'A member has sent a friend request to the recipient.', 0, 1),
(14, 14, 'bp-email-type', 'Recipient has had a friend request accepted by a member.', 0, 1),
(15, 15, 'bp-email-type', 'A group''s details were updated.', 0, 1),
(16, 16, 'bp-email-type', 'A member has sent a group invitation to the recipient.', 0, 1),
(17, 17, 'bp-email-type', 'Recipient''s status within a group has changed.', 0, 1),
(18, 18, 'bp-email-type', 'A member has requested permission to join a group.', 0, 1),
(19, 19, 'bp-email-type', 'Recipient has received a private message.', 0, 1),
(20, 20, 'bp-email-type', 'Recipient has changed their email address.', 0, 1),
(21, 21, 'bp-email-type', 'Recipient had requested to join a group, which was accepted.', 0, 1),
(22, 22, 'bp-email-type', 'Recipient had requested to join a group, which was rejected.', 0, 1),
(23, 23, 'bp-email-type', 'A site member has sent a site invitation to the recipient.', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_um_metadata`
--

CREATE TABLE `wp5t_um_metadata` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `um_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `um_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id_indx` (`user_id`),
  KEY `meta_key_indx` (`um_key`(250)),
  KEY `meta_value_indx` (`um_value`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_usermeta`
--

CREATE TABLE `wp5t_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp5t_usermeta`
--

INSERT INTO `wp5t_usermeta` VALUES
(1, 1, 'nickname', 'Renato'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp5t_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp5t_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:"9bca35011e97e15021428547cf30641cb8e5a27e60ee3ecc2f753e9e5a882394";a:4:{s:10:"expiration";i:1629058389;s:2:"ip";s:13:"212.15.177.18";s:2:"ua";s:136:"Mozilla/5.0 (Linux; Android 4.3; S8-701u Build/HuaweiMediaPad) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.111 Safari/537.36";s:5:"login";i:1627848789;}s:64:"4a22aa6c0c7ce25f985c0e8fb730ad5b927c7102b5496282c8a45a83f30e5285";a:4:{s:10:"expiration";i:1628199898;s:2:"ip";s:13:"95.168.121.97";s:2:"ua";s:146:"Mozilla/5.0 (Linux; Android 10; A1 Alpha 20+) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/14.0 Chrome/87.0.4280.141 Mobile Safari/537.36";s:5:"login";i:1628027098;}s:64:"46fc09a16b69c07d1f8786f49a0765d7db089066561e771fc0dcc0166b0b367a";a:4:{s:10:"expiration";i:1628242404;s:2:"ip";s:13:"95.168.120.19";s:2:"ua";s:146:"Mozilla/5.0 (Linux; Android 10; A1 Alpha 20+) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/14.0 Chrome/87.0.4280.141 Mobile Safari/537.36";s:5:"login";i:1628069604;}s:64:"3583af39567fdb38d6afbdc5a9bd8c8134617d5940b1eec654c59da305ad9617";a:4:{s:10:"expiration";i:1628242979;s:2:"ip";s:13:"95.168.120.19";s:2:"ua";s:126:"Mozilla/5.0 (Linux; Android 10; A1 Alpha 20+) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.120 Mobile Safari/537.36";s:5:"login";i:1628070179;}}'),
(17, 1, 'wp5t_dashboard_quick_press_last_post_id', '160'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:12:"95.168.120.0";}'),
(19, 1, 'account_status', 'approved'),
(20, 1, 'um_member_directory_data', 'a:5:{s:14:"account_status";s:8:"approved";s:15:"hide_in_members";b:0;s:13:"profile_photo";b:0;s:11:"cover_photo";b:0;s:8:"verified";b:0;}'),
(21, 1, 'um_user_profile_url_slug_user_login', 'Renato'),
(22, 1, 'um_account_secure_fields', 'a:4:{s:7:"general";a:4:{i:0;s:10:"user_login";i:1;s:10:"first_name";i:2;s:9:"last_name";i:3;s:10:"user_email";}s:8:"password";a:1:{i:0;s:13:"user_password";}s:7:"privacy";a:3:{i:0;s:15:"profile_privacy";i:1;s:15:"profile_noindex";i:2;s:15:"hide_in_members";}s:6:"delete";a:1:{i:0;s:20:"single_user_password";}}'),
(23, 1, 'wp5t_user-settings', 'libraryContent=browse'),
(24, 1, 'wp5t_user-settings-time', '1620221518'),
(25, 1, 'default_password_nag', ''),
(55, 1, 'nav_menu_recently_edited', '4'),
(56, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(57, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(26, 1, '_um_last_login', '1628070179'),
(27, 2, 'nickname', 'tester'),
(28, 2, 'first_name', ''),
(29, 2, 'last_name', ''),
(30, 2, 'description', ''),
(31, 2, 'rich_editing', 'true'),
(32, 2, 'syntax_highlighting', 'true'),
(33, 2, 'comment_shortcuts', 'false'),
(34, 2, 'admin_color', 'fresh'),
(35, 2, 'use_ssl', '0'),
(36, 2, 'show_admin_bar_front', 'true'),
(37, 2, 'locale', ''),
(38, 2, 'wp5t_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(39, 2, 'wp5t_user_level', '0'),
(40, 2, 'synced_gravatar_hashed_id', '9940f677b54be0d0ad8fd7d556937c3f'),
(41, 2, 'um_member_directory_data', 'a:5:{s:14:"account_status";s:8:"approved";s:15:"hide_in_members";b:0;s:13:"profile_photo";b:0;s:11:"cover_photo";b:0;s:8:"verified";b:0;}'),
(42, 2, 'submitted', 'a:9:{s:7:"form_id";s:2:"39";s:10:"um_request";s:0:"";s:8:"_wpnonce";s:10:"39d17e3483";s:16:"_wp_http_referer";s:12:"/?page_id=49";s:10:"user_login";s:6:"tester";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:10:"user_email";s:15:"imejl@imejl.com";s:9:"timestamp";i:1620374049;}'),
(43, 2, 'form_id', '39'),
(44, 2, 'um_request', ''),
(45, 2, '_wpnonce', '39d17e3483'),
(46, 2, '_wp_http_referer', '/?page_id=49'),
(53, 2, 'session_tokens', 'a:1:{s:64:"b671edf1b087225faedac584546cf539731d18d1e45c1b27981627aa1069f2a6";a:4:{s:10:"expiration";i:1620546851;s:2:"ip";s:14:"193.14.246.134";s:2:"ua";s:95:"Mozilla/5.0 (Windows NT 6.2; ARM; Trident/7.0; Touch; rv:11.0; WPDesktop; Lumia 630) like Gecko";s:5:"login";i:1620374051;}}'),
(48, 2, 'timestamp', '1620374049'),
(49, 2, 'um_user_profile_url_slug_user_login', 'tester'),
(52, 2, 'account_status', 'approved'),
(51, 2, 'full_name', ''),
(54, 2, '_um_last_login', '1620374051'),
(58, 1, 'meta-box-order_um_directory', 'a:3:{s:4:"side";s:33:"submitdiv,um-admin-form-shortcode";s:6:"normal";s:144:"slugdiv,um-admin-form-general,um-admin-form-appearance,um-admin-form-sorting,um-admin-form-profile,um-admin-form-search,um-admin-form-pagination";s:8:"advanced";s:0:"";}'),
(59, 1, 'screen_layout_um_directory', '2'),
(60, 3, 'nickname', 'Rimke i brka i krepato'),
(61, 3, 'first_name', 'Vt3gf3r2r'),
(62, 3, 'last_name', 'Rc3cr2'),
(63, 3, 'description', ''),
(64, 3, 'rich_editing', 'true'),
(65, 3, 'syntax_highlighting', 'true'),
(66, 3, 'comment_shortcuts', 'false'),
(67, 3, 'admin_color', 'ectoplasm'),
(68, 3, 'use_ssl', '0'),
(69, 3, 'show_admin_bar_front', 'true'),
(70, 3, 'locale', ''),
(71, 3, 'wp5t_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(72, 3, 'wp5t_user_level', '0'),
(77, 3, 'account_status', 'approved'),
(74, 3, 'um_member_directory_data', 'a:5:{s:14:"account_status";s:8:"approved";s:15:"hide_in_members";b:0;s:13:"profile_photo";b:0;s:11:"cover_photo";b:0;s:8:"verified";b:0;}'),
(75, 3, 'um_user_profile_url_slug_user_login', 'Rimke+i+brka+i+krepato'),
(76, 3, 'full_name', 'vt3gf3r2r rc3cr2'),
(78, 3, 'dismissed_wp_pointers', ''),
(79, 3, 'synced_gravatar_hashed_id', 'ffdd6503dea6e80179f6695b011ed396'),
(80, 3, 'session_tokens', 'a:1:{s:64:"526e7a004654509ec77f3693583f29cae2a8d6d0535522165e9668a3750afabb";a:4:{s:10:"expiration";i:1624182915;s:2:"ip";s:13:"161.53.180.10";s:2:"ua";s:111:"Mozilla/5.0 (Linux; Android 9; 8788_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.92 Safari/537.36";s:5:"login";i:1624010115;}}'),
(81, 3, '_um_last_login', '1624010115'),
(82, 3, 'um_account_secure_fields', 'a:4:{s:7:"general";a:4:{i:0;s:10:"user_login";i:1;s:10:"first_name";i:2;s:9:"last_name";i:3;s:10:"user_email";}s:8:"password";a:1:{i:0;s:13:"user_password";}s:7:"privacy";a:3:{i:0;s:15:"profile_privacy";i:1;s:15:"profile_noindex";i:2;s:15:"hide_in_members";}s:6:"delete";a:1:{i:0;s:20:"single_user_password";}}'),
(83, 1, 'bpbm_last_activity', '2021-08-04 09:57:04'),
(84, 3, 'bpbm_last_activity', '2021-06-18 10:10:48'),
(85, 2, 'bpbm_last_activity', '1970-01-01 00:00:00'),
(86, 1, 'bpbm-last-seen-thread-1', '1624011215'),
(87, 3, 'bpbm-last-seen-thread-1', '1624011048'),
(88, 3, 'bp_new_mention_count', '1'),
(89, 3, 'bp_new_mentions', 'a:1:{i:0;i:3;}'),
(90, 1, 'bp_latest_update', 'a:2:{s:2:"id";i:3;s:7:"content";s:45:"@rimke-i-brka-i-krepato kjhdkjbvsdbksjkckjsbd";}'),
(91, 1, 'total_group_count', '1'),
(92, 4, 'nickname', 'Marislea Fufondrupović'),
(93, 4, 'first_name', 'Marislea'),
(94, 4, 'last_name', 'Fufondrupović'),
(95, 4, 'description', ''),
(96, 4, 'rich_editing', 'true'),
(97, 4, 'syntax_highlighting', 'true'),
(98, 4, 'comment_shortcuts', 'false'),
(99, 4, 'admin_color', 'fresh'),
(100, 4, 'use_ssl', '0'),
(101, 4, 'show_admin_bar_front', 'true'),
(102, 4, 'locale', ''),
(107, 4, 'bp_xprofile_visibility_levels', 'a:1:{i:1;s:6:"public";}'),
(105, 4, 'synced_gravatar_hashed_id', 'b01517ee53396bd2524fe66bb643fed8'),
(106, 4, 'um_member_directory_data', 'a:5:{s:14:"account_status";s:8:"approved";s:15:"hide_in_members";b:0;s:13:"profile_photo";b:0;s:11:"cover_photo";b:0;s:8:"verified";b:0;}'),
(130, 4, 'wp5t_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(109, 4, 'um_user_profile_url_slug_user_login', 'MarisleaFufondrupovic'),
(110, 5, 'nickname', 'Marislea Fufondrupovic'),
(111, 5, 'first_name', 'Marislea'),
(112, 5, 'last_name', 'Fufondrupovic'),
(113, 5, 'description', ''),
(114, 5, 'rich_editing', 'true'),
(115, 5, 'syntax_highlighting', 'true'),
(116, 5, 'comment_shortcuts', 'false'),
(117, 5, 'admin_color', 'fresh'),
(118, 5, 'use_ssl', '0'),
(119, 5, 'show_admin_bar_front', 'true'),
(120, 5, 'locale', ''),
(121, 5, 'wp5t_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(122, 5, 'wp5t_user_level', '0'),
(127, 5, 'account_status', 'approved'),
(124, 5, 'um_member_directory_data', 'a:5:{s:14:"account_status";s:8:"approved";s:15:"hide_in_members";b:0;s:13:"profile_photo";b:0;s:11:"cover_photo";b:0;s:8:"verified";b:0;}'),
(125, 5, 'um_user_profile_url_slug_user_login', 'marislea'),
(126, 5, 'full_name', 'marislea fufondrupovic'),
(128, 5, 'dismissed_wp_pointers', ''),
(129, 5, 'synced_gravatar_hashed_id', '273e7642aaf883126423ead1ed68e998'),
(131, 4, 'wp5t_user_level', '0'),
(132, 4, 'account_status', 'approved'),
(133, 5, 'session_tokens', 'a:1:{s:64:"cd3316d7c0cd57a7776cf4ac4eca5e34a3006778a403deeaff220b46b96d1264";a:4:{s:10:"expiration";i:1629281425;s:2:"ip";s:13:"95.168.120.19";s:2:"ua";s:95:"Mozilla/5.0 (Windows NT 6.2; ARM; Trident/7.0; Touch; rv:11.0; WPDesktop; Lumia 630) like Gecko";s:5:"login";i:1628071825;}}'),
(134, 5, '_um_last_login', '1628071825'),
(135, 5, 'bpbm_last_activity', '2021-08-04 10:17:04'),
(136, 5, 'um_account_secure_fields', 'a:4:{s:7:"general";a:4:{i:0;s:10:"user_login";i:1;s:10:"first_name";i:2;s:9:"last_name";i:3;s:10:"user_email";}s:8:"password";a:1:{i:0;s:13:"user_password";}s:7:"privacy";a:3:{i:0;s:15:"profile_privacy";i:1;s:15:"profile_noindex";i:2;s:15:"hide_in_members";}s:6:"delete";a:1:{i:0;s:20:"single_user_password";}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp5t_users`
--

CREATE TABLE `wp5t_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp5t_users`
--

INSERT INTO `wp5t_users` VALUES
(1, 'Renato', '$P$B31YFqKUNL.on7DqLTV19Xw.0BFu3i/', 'renato', 'renato.grubesic08@gmail.com', 'http://renatogr.cf', '2021-05-05 12:14:28', '1624009277:$P$BiALwZdAevRXt.PoVzitSovJLSIyHx0', 0, 'Renato'),
(2, 'tester', '$P$BNvFopvZvtS48qyg6b6KDvaA3StWgc1', 'tester', 'imejl@imejl.com', '', '2021-05-07 07:54:09', '', 0, ''),
(3, 'Rimke i brka i krepato', '$P$BWQhSc43o908lOE1i0WWSRgbixX1tI.', 'rimke-i-brka-i-krepato', 'frvcerfrvrwr@ewedq3xqe.brutalci', '', '2021-06-18 09:52:18', '', 0, 'Vt3gf3r2r Rc3cr2'),
(4, 'MarisleaFufondrupovic', '$P$BFyjMll65CtFkW4Au4zcuxP3hmx3WC.', 'marisleafufondrupovic', 'renato.grubesic@hotmail.com', '', '2021-08-04 10:03:01', '', 0, 'Marislea Fufondrupović'),
(5, 'marislea', '$P$ByIgOH/eYawKUOJJWc300YFMMkx1K21', 'marislea', 'prljava.roletna@outlook.com', 'http://marislea', '2021-08-04 10:08:25', '', 0, 'Marislea Fufondrupovic');

-- --------------------------------------------------------

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
