-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2021 at 01:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `radhee`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add quiz', 7, 'add_quiz'),
(26, 'Can change quiz', 7, 'change_quiz'),
(27, 'Can delete quiz', 7, 'delete_quiz'),
(28, 'Can view quiz', 7, 'view_quiz');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'Radhee', 'quiz'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-10 10:02:08.110863'),
(2, 'auth', '0001_initial', '2021-05-10 10:02:09.733052'),
(3, 'admin', '0001_initial', '2021-05-10 10:02:21.014284'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-10 10:02:23.369353'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-10 10:02:23.475313'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-05-10 10:02:24.853255'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-05-10 10:02:26.550301'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-05-10 10:02:27.055285'),
(9, 'auth', '0004_alter_user_username_opts', '2021-05-10 10:02:27.212404'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-05-10 10:02:28.553635'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-05-10 10:02:28.603089'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-05-10 10:02:28.698956'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-05-10 10:02:28.856709'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-05-10 10:02:28.965708'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-05-10 10:02:29.096754'),
(16, 'auth', '0011_update_proxy_permissions', '2021-05-10 10:02:29.140776'),
(17, 'sessions', '0001_initial', '2021-05-10 10:02:29.629254');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `quiz1`
--

CREATE TABLE `quiz1` (
  `id` int(2) NOT NULL,
  `Question` varchar(1000) NOT NULL,
  `Option1` varchar(1000) NOT NULL,
  `Option2` varchar(1000) NOT NULL,
  `Option3` varchar(1000) NOT NULL,
  `Option4` varchar(1000) NOT NULL,
  `correctans` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz1`
--

INSERT INTO `quiz1` (`id`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `correctans`, `description`) VALUES
(1, 'Who is a Good Samaritan on the road', 'Someone who gives way to an Emergency Vehicle', 'Someone who helps an accident victim', 'All of the above', 'None of the above', 'All of the above', 'Good Samaritan prompt and right action would save the life of an accident victim or critical patient. When you hear the siren of an emergency vehicle, move left and drive slow to give way, and when you see an accident victim help them.'),
(2, 'Which emergency vehicles on the road require a green-corridor to reach their destination on-time to handle an emergency', 'Ambulance', 'Fire Brigade', 'Police vehicle with siren', 'All of the above', 'All of the above', 'It is important that all emergency vehicles reach the site at the earliest to rescue someone in danger or help a critical patient. Ambulance, Fire Brigade and Police vehicle with siren are emergency vehicles.'),
(3, 'Which lane is for an emergency vehicle on the road', 'Right Lane', 'Left Lane', 'Middle Lane', 'All of the above', 'Right Lane', 'The right lane is for speeding vehicles. The left lane is used by heavy vehicles and is congested due to vehicles stopped or parked and pedestrians waiting to cross the road thus right lane is appropriate for an emergency vehicle to pass speedily.'),
(4, 'On the siren of an ambulance, every driver should take the following step', 'Move the vehicle to left lane so the right lane is free to speed up the ambulance', 'Move the vehicle to right lane so the left lane is free to speed up the ambulance', 'Drive zig-zag to create space for ambulance', 'Ignore the siren and continue driving as is', 'Move the vehicle to left lane so the right lane is free to speed up the ambulance', 'When everyone takes uniform action of steering their vehicle to the left lane and slowing down, the right lane becomes free to speed-up the ambulance.'),
(5, 'When you see a road accident or an unconscious person on the road, which helpline number should you inform', '100 - Police Control Room', '101 - Fire Brigade', '108 - Ambulance Service', '1906 - Gas Leakage Helpline Number', '108 - Ambulance Service', '108 Ambulance Helpline is a free service. It is manned by a paramedic or doctor and is well equipped to rescue the patient, are aware of how to lift the patient to prevent secondary injury, and to start the treatment on the way, thereby stabilizing the patient and saving a life.'),
(6, 'Do you need to reply to all the questions asked by the 108 Ambulance Helpline', 'Yes', 'No', '', '', 'Yes', 'All the questions are related to the accident site and situation. This helps the call center to segregate authentic and hoax calls. They will call back to confirm call authenticity, so do reply every call.'),
(7, 'How would sharing the address & landmark of the accident site with the Ambulance Helpline be helpful', 'To identify the nearest available Ambulance and fastest route to the accident site', 'For an Ambulance driver to reach the accident site without searching', 'For an Ambulance to reach the accident site in minimum time', 'All of the above', 'All of the above', 'Address with landmark helps to identify the most efficient route to the accident site and reach quickly. Sometimes ambulance driver is not able to locate the accident on the map, thus your presence on the site will be important for directions and guidance.'),
(8, 'Which information is useful for the Ambulance Helpline operator to send appropriate ambulance/s', 'Type of accident', 'Number of people injured', 'Type of injuries', 'All of the above', 'All of the above', 'All accident-related information is important for the 108 Ambulance helpline operator to decide how many ambulances are required and what should the Ambulance be equipped with to save the victim.'),
(9, 'What is your role at the site of the accident till the arrival of the ambulance', 'To guide the ambulance driver to locate accident site', 'To ensure that no one touches the victim unless trained to do so, like a Doctor', 'To ensure that no one gives anything to eat or drink to the accident victim', 'All of the above', 'All of the above', 'As a Good Samaritan helping the accident victim, you should ensure that the victim is kept safe from any secondary injury & complications (caused by untrained help) and the victim is transported safely in an Ambulance.'),
(10, 'Which help is the Right Help for an accident victim', 'Picked by trained personnel', 'Picked by good-hearted people', '', '', 'Picked by trained personnel', 'As a Good Samaritan, you should understand the difference between right help and wrong help. Mishandling the accident victim could worsen the patient’s condition, cause disability or death due to shock.'),
(11, 'Which is the right vehicle for transporting an accident victim to the hospital', 'Transporting in a medically equipped Ambulance', 'Transporting in a cramped public vehicle', 'Transporting in a cramped private vehicle', 'Transporting in which ever vehicle available', 'Transporting in a medically equipped Ambulance', 'Ambulances medically well equipped to start the treatment on-site and, on the way, thereby stabilizing the patient and saving a life. It is manned by paramedic or doctor who are aware about which hospital would be able to treat the patient and know the hospital admission procedures. In a private vehicle, the patient cannot lie comfortably and cannot be treated, it may not be aware of hospital location and admission procedures. Mishandling and delays could worsen the patient’s condition and cause death.'),
(12, 'Why should you not touch the accident victim unless trained as a first aider', 'Untrained help could worsen the condition of accident victim and delay recovery', 'Untrained help could become the cause of disability', 'Untrained help could cause shock and death of an accident victim', 'All of the above', 'All of the above', 'Right help could be instrumental in saving a life, reducing disability, and promoting early recovery. It would reduce the burden on healthcare infrastructure, creating empty beds for other patients.'),
(13, 'Why should you not give water and anything to eat or drink to the accident victim', 'It can impact in the future course of treatment', 'For an unconscious patient, it can chock the windpipe and cause difficulty in breathing', 'For patient requiring immediate surgery, food or water could delay the surgery time', 'All of the above', 'All of the above', 'You are aware, before any surgery, the doctor instructs not to eat 6-8 hours before admission. If the patient is given water or food, the surgery would be delayed, worsening the patient’s condition and may even cause death.'),
(14, 'How does the crowd at the accident site impact the accident victim', 'A semi-conscious patient could be trying to say something but due to the crowd’s noise his/her voice goes unheard', 'The crowd could unknowingly touch the patient and worsen his/her condition', 'Too many vehicle parked at accident site can be cause of traffic jam and delay ambulance reaching the site of accident', 'All of the above', 'All of the above', 'A Good Samaritan should take all the right steps to help an accident victim. You should not cause or become part of the crowd that delays the right help from reaching the patient.'),
(15, 'The below action will make a difference in saving the life of an accident victim', 'Take a video or picture of the accident and share-on the social media', 'Be a part of the crowd and watch what others are doing', 'Call 108 ambulance helpline number', 'Ignore the situation', 'Call 108 ambulance helpline number', 'When you see an accident victim, as Good Samaritan take the following 6 steps\r\n1. Call 108 ambulance helpline\r\n2. Answer all the questions asked by the ambulance call centre\r\n3. Wait till the ambulance reaches the site of the accident\r\n4. Don’t allow anyone to touch the patient unless the person is trained\r\n5. Don\'t allow anyone to feed water or food to the accident victim\r\n6. Don\'t allow crowds to gather at the site of the accident.');

-- --------------------------------------------------------

--
-- Table structure for table `quizcpr`
--

CREATE TABLE `quizcpr` (
  `id` int(2) NOT NULL,
  `Question` varchar(1000) NOT NULL,
  `Option1` varchar(1000) NOT NULL,
  `Option2` varchar(1000) NOT NULL,
  `Option3` varchar(1000) NOT NULL,
  `Option4` varchar(1000) NOT NULL,
  `Option5` varchar(1000) NOT NULL,
  `correctans` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizcpr`
--

INSERT INTO `quizcpr` (`id`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `Option5`, `correctans`, `description`) VALUES
(1, 'What does CPR stand for', 'Cardiopulmonary Resuscitation', 'Cardiac pulmonary Revival', 'Cardiopediatric Resuscitation', 'Cardiopulmonary Recovery', '', 'Cardiopulmonary Resuscitation', 'CPR stands for Cardio Pulmonary Resuscitation, and CPR helps to revive functioning of heart. CPR done with a prompt response and right technique when a victim’s heart stops beating will save a life.'),
(2, 'In which condition should one give CPR (when a heart stops beating)', 'Heart Attack', 'Electric Shock', 'Drowning ', 'Choking', 'All of above ', 'All of above ', 'When the heart stops beating, it means blood reaching vital organs like the lung, the brain has stopped and led to stoppage of oxygen supply to the brain. The brain cannot survive without oxygen for more than 5 minutes, causing the death of a person. '),
(3, 'What is the correct order of airway, breathing, and circulation in the CPR process', 'Chest compressions, airway, breathing', 'Airway, Breastbone, Chest', 'Airway, breathing, circulation', 'Back, circulation, airway', '', 'Chest compressions, airway, breathing', 'In 2010, the American Heart Association (AHA) changed CPR’s longstanding A-B-C (Airway, Breathing, Compressions) sequence to C-A-B (Compressions, Airway, Breathing.)'),
(4, 'CPR involves', 'Chest compressions & rescue breaths', 'Rescue breaths & abdominal thrusts', 'Chest compression & abdominal thrusts', 'Abdominal thrusts & finger sweeps', '', 'Chest compressions & rescue breaths', 'Compressing the chest helps to circulate blood to the vital organs. Rescue breaths provide oxygen to the blood, a preliminary measure to provide oxygen before medical help arrives. While performing CPR, deliver cycles of 30 compressions around two rescue breaths. The American Heart Association recommends that even untrained bystanders should begin CPR with chest compressions. Furthermore, untrained individuals should provide hands only CPR. That means uninterrupted chest compressions of about 100 per minute until emergency personnel arrives. Those who are trained to perform CPR should begin with 30 chest compressions before checking the airway, after which 2 rescue breaths may be administered, along with additional cycles if necessary.'),
(5, 'How does CPR help when a person goes into cardiac arrest', 'It starts the heart beating again', 'It helps the blood flow to the heart', 'It helps blood flow to the brain', 'Both B and C', '', 'Both B and C', 'When a person goes into cardiac arrest, the heart stops beating or stops beating effectively. It halts the flow of blood, according to the AHA. CPR helps a small amount of blood to continue to flow to the heart and brain until the emergency medical help arrives. When done correctly, CPR can double or even triple a person chance of survival.'),
(6, 'What is the first thing you should do before beginning CPR if you see an adult collapse and the person is unresponsive', 'Remove the victim belt', 'Check the victim mouth', 'Call Ambulance (108/102)', 'Call the victim doctor', '', 'Call Ambulance (108/102)', 'You should yell for help right away and call 108 or 102 ambulance service as you start chest compressions on an adult. Ideally, have someone else call 108 or 102 ambulance service and get an AED while you begin CPR. If the victim is an adult who has been underwater, suffered trauma, or is intoxicated, begin CPR first, then call 108 or 102. Do CPR for about 2 minutes before calling. It means about 7 to 8 cycles of chest compressions and rescue breathing.'),
(7, 'After calling Ambulance (108/102), what is the next step in CPR on an unresponsive adult', 'Call the doctor ', 'Give mouth to mouth breaths ', 'Begin chest compression', 'All of the above', '', 'Begin chest compression', 'Start chest compressions pressing hard and fast in the centre of the victim chest. The recommended chest compression rate is 100 to 120 per minute. If an AED is available use it. Continue until the person revives or help arrives. '),
(8, 'When a person has a cardiac arrest, the faster that CPR begins, the better the chances of a victim\'s recovery', 'True', 'False', '', '', '', 'True', 'Death can occur in minutes if a person having a cardiac arrest does not get treatment. CPR can help reverse cardiac arrest. If you know CPR and stay up to date with your training you will be able to help a person having a cardiac arrest.'),
(9, 'For how long brain can survive without blood and oxygen supply', '5 minutes', '10 minutes', '30 minutes', '1 minute', '', '5 minutes', 'The brain can survive without oxygen for 5 minutes. Blood supplies oxygen to all the cells of the body, including brain cells. CPR helps the functioning of the heart once again. CPR acts as a saviour when given with the right technique and starts within 1-3 minutes of stopping the heartbeat. '),
(10, 'What is the ratio of compressions to breaths when performing Cardiopulmonary Resuscitation', '15 compressions, 1 breath', '20 compressions, 2 breaths ', '30 compressions, 2 breaths', '30 compressions, 2 breaths (adult) & 15 compressions, 1 breaths (Children)', '', '30 compressions, 2 breaths', 'Research says when 120 chest compression and 8 rescue breaths are given in a one-minute duration, it helps revive the heart. One minute should be divided into 15 seconds cycle. In each cycle, 30 chest compression and 2 rescue breaths should be given to maintain the required energy to revive the heart. '),
(11, 'In which situation person can have choking', 'Due to any food particle gets stuck in the windpipe ', 'During drowning, debris getting stuck in the windpipe', 'Vomiting in an unconscious or semi-conscious person can chock the windpipe', 'All of the above', 'None of the Above', 'All of the above', 'Choking will block the partial or complete windpipe making it difficult in breathing or can stop breathing. If the breathing stops which can be cause death if the breathing is not restored in 2-3 minutes time. Cleaning the mouth and removing anything deeper stuck in the windpipe by the back blows and the Heimlich manoeuvre will save a life. '),
(12, 'Which of the following is the correct method for saving someone from choking', 'Five back blows followed by five abdominal thrusts, if necessary', 'Five abdominal thrusts followed by five back blows if needed', 'Back blow only', 'Abdominal thrusts only', '', 'Five back blows followed by five abdominal thrusts, if necessary', 'When a person with choking is not able to cough in such a situation, the bystander should give a five and five approach while delivering first aid to a choking victim. \r\nGive 5 back blows. First, deliver five back blows between the person shoulder blades with the heel of your hand. \r\nGive 5 abdominal thrusts. Perform five abdominal thrusts. \r\nAlternate between 5 blows and 5 thrusts until the blockage is dislodged.\r\n'),
(13, 'When you show a friend with electric shock and unconscious, what will you do', 'Stop the electric main power supply', 'With the help of wood or plastic, take the person out of electric contact', 'Call 108/102 ambulance service, if required', 'Give CPR, if required', 'All of above', 'All of above', 'If an electric current outside the body and passes through the heart, it can mask the impulses and disturb the heart rhythm. In many cases, electric shock can cause cardiac arrest. Safe removal of a person with an electric supply and CPR can be instrumental in saving precious lives.'),
(14, 'How does an automatic external defibrillator (AED) help a person who is in cardiac arrest', 'An AED pumps blood', 'An AED shocks the brain', 'An AED restores normal heart rhythm', 'An AED helps the victim breathe ', '', 'An AED restores normal heart rhythm', 'The most common cause of sudden cardiac arrest is ventricular fibrillation (VF). A heart in VF quivers and cannot pump blood. A person in cardiac arrest needs CPR and a shock to the heart (defibrillation). AED (Automatic External Defibrillator) is a device that helps to revive the functioning of the heart by giving a small electric shock to the heart. An AED and other forms of defibrillation can sometimes stop the VF quivering and allows normal heart rhythm to resume.'),
(15, 'Do you feel you should attend a formal CPR training before giving CPR to a person who had heart attack', 'Yes', 'No', '', '', '', 'Yes', 'By now, you are aware that the CPR technique is a lifesaver. A person whose heart stops functioning has only 4-5 minutes to revive, which only trained first aider in CPR can do. Attending the CPR training will help you understand how to do CAB, and learn chest compression and mouth-to-mouth breathing technique. ');

-- --------------------------------------------------------

--
-- Table structure for table `quizfa`
--

CREATE TABLE `quizfa` (
  `id` int(2) NOT NULL,
  `Question` varchar(1000) NOT NULL,
  `Option1` varchar(1000) NOT NULL,
  `Option2` varchar(1000) NOT NULL,
  `Option3` varchar(1000) NOT NULL,
  `Option4` varchar(1000) NOT NULL,
  `correctans` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizfa`
--

INSERT INTO `quizfa` (`id`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `correctans`, `description`) VALUES
(1, '_______________ is the medical term for assistance given to a person in need of urgent medical intervention', 'Urgent care', 'Ambulance care', 'Mouth to mouth', 'First aid', 'First aid', 'First aid is the term used to describe the initial assistance given to a sick or injured person before the ambulance or professional medical help arrives. It consists of evaluating the patient\'s injury or severity of illness, immediate treatment of life-threatening problems (when possible), and activation of the local emergency services system (whether calling 108/102 ambulance service or going to a doctor).'),
(2, 'What is the objective of First Aid', 'Preserve the Life', 'Prevent complication or disability', 'Promote early recovery', 'All of the above', 'All of the above', 'First Aid is given by a trained, certified First Aider at the site of the incident before the ambulance comes or the doctor reaches. First, aiders right steps help in saving a precious life, reduce complication and promote early recovery \r\n'),
(3, 'You should carry out a primary survey on every casualty', 'True', 'False', 'Cant say', 'Maybe', 'True', 'True - the primary survey is a quick check to identify any major life-threatening problems. A primary survey is done in a systematic manner to ensure no emergency conditions and injuries are missed.'),
(4, 'What does DRABC stand for', 'Danger, Response, Airway, Breathing, Circulation', 'Danger, Review, Airway, Breathing, Communication', 'Danger, Review, Airway, Bleeding, Circulation ', 'Danger, Response, Airway, Bleeding, Communication', 'Danger, Response, Airway, Breathing, Circulation', 'DRABC is used to remember that actions to take when you encounter an unconscious victim. Systematically done, DRABC helps you know the cause of a patient’s unconsciousness and helps you take the right steps to save a life.'),
(5, 'In an emergency situation, who is the most important person', 'Bystanders\r\n', 'EMS', 'Yourself', 'The injured victim', 'Yourself', 'You are the most important person in an emergency situation. You must keep yourself safe and not become a second victim.'),
(6, 'You arrive at the scene of a road traffic accident. There are multiple casualties with serious injuries. Who should you give assistance to first', 'The youngest victim ', 'The victim who isn’t making any noise', 'The victim in the most pain', 'The victim who is bleeding', 'The victim who isn’t making any noise', 'As a general rule, the quiet victims should be assessed first as they may have a problem with their airway or unconscious due to some reason where your prompt and right help can save a life.'),
(7, 'What is the best way to clean a wound at the site of the accident', 'Alcohol', 'Hydrogen peroxide', 'Water', 'Soap and Water', 'Water', 'Water is the best antiseptic. Rinse the wound under running water for 5 to 10 minutes. It is easily available at the site of accident also. Alcohol, Hydrogen peroxide and soap, and water are used for cleaning a specific type of wound. '),
(8, 'How would you manage a deep, bleeding cut on the palm of your hand', 'Hold the injured hand under running water', 'Apply direct pressure to the cut, elevate the arm, then bandage the entire palm', 'Apply a pressure, immobilisation bandage to the arm', 'Apply a tourniquet bandage to the arm', 'Apply direct pressure to the cut, elevate the arm, then bandage the entire palm', 'Direct pressure over the bleeding point is the most effective way to stop the bleeding. Elevating the injured limbs help to reduce the bleeding, and bandage helps to prevent the infection.'),
(9, 'What is Shock in first aid', 'Low blood sugar levels', 'A state of emotional distress', 'Lack of oxygen reaching the body\'s cells and tissues', 'The body temperature drops too low', 'Lack of oxygen reaching the body\'s cells and tissues', 'Shock occurs when the body’s cells do not receive an adequate supply of oxygen. Shock occurs when a victim loses too much blood or following a life-threatening allergic reaction (anaphylaxis). Other causes of shock include infection, severe allergic reactions, severe dehydration, and heart problems. In a classic presentation of shock because of blood loss where patients will have pale skin, will look confused.\r\n'),
(10, 'What O. R. S. stands for', 'Oral Rehydration Solution ', 'Oral Rehydration Salt', 'Oral Rice Solution', 'Oral Rice Salt', 'Oral Rehydration Solution ', 'O.R.S. stands for Oral Rehydration Solution. ORS helps to save the life of patients who has dehydration due to high fever, heatstroke, Diarrhoea, vomiting, or fluid loss due to any health issue.'),
(11, 'What is First Aid for Burn Injury', 'Water', 'Ice', 'Curd', 'Toothpaste', 'Water', 'For any burn injury, put the affected part under running water or submerge the burned part in the water. Water should be at room temperature. Don’t rub anything on the burned part as it can deepen the burn injury. Applying ice can be a cause of shock due to sudden changes in temperature. Curd, toothpaste, or any other items can be a cause of infection or delay in healing. Water is the best first aid for burn injury from fire, heat, or any chemical.'),
(12, 'What is the Indian emergency services number for Ambulance', '108 / 102', '112', '911', '122', '108 / 102', '108 /102 number is a free emergency ambulance service run by the state government, which has a well-trained paramedic and required essential equipment to stabilize the patient on the way to the hospital.'),
(13, 'What is the first aid treatment for a sprain or strain', 'Rest, Ice, Compression, and Elevation (R.I.C.E.)', 'Heat packs for 15 minutes, every 2 hours, for the first 24 hours', 'Massage and exercise', 'Apply an ice pack every 20 minutes', 'Rest, Ice, Compression, and Elevation (R.I.C.E.)', 'Sprain or strain means fracture of muscle or tendons, which needs to be treated like a fracture of the bone. Rest or immobilization of part is very important. Applying ice will reduce the swelling. Compression by the right type of bandage and elevation of a limb will help in early recovery'),
(14, 'What is the management of a conscious casualty who has diabetes and low blood sugar', 'Give water', 'Give nothing', 'Give sugar', 'Give insulin', 'Give sugar', 'Diabetic patients can have an attack of low blood sugar which can risk their life. Giving raw sugar or sugar water will help in increasing the blood sugar level immediately, thus save a precious life.'),
(15, 'Do you feel you should attend formal first aid training before giving first aid to a stranger on the street or your family members or near and dear ones', 'Yes', 'No', 'Maybe', 'Cant say', 'Yes', 'The right help in platinum 10 minutes by trained first aider helps save a life, promote early recovery, and prevent complications or disability. \r\nAttending the basic first aid training will help you understand what actions you should take when you see anyone in distress at home, office, functions, or on the road. Your right, prompt action will help to save the life and promote early recovery. \r\nFirst Aid training gives the scientific understanding, practical knowledge, and hands-on practice with the concept of Right Help, Early Help in the following topics \r\n- How to check the patient\r\n- How to help patient with various medical emergencies\r\n- How to help accident victim in various situations\r\n- How to give CPR');

-- --------------------------------------------------------

--
-- Table structure for table `quizfs`
--

CREATE TABLE `quizfs` (
  `id` int(2) NOT NULL,
  `Question` varchar(1000) NOT NULL,
  `Option1` varchar(1000) NOT NULL,
  `Option2` varchar(1000) NOT NULL,
  `Option3` varchar(1000) NOT NULL,
  `Option4` varchar(1000) NOT NULL,
  `correctans` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizfs`
--

INSERT INTO `quizfs` (`id`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `correctans`, `description`) VALUES
(1, 'For a fire to start, it requires fuel, oxygen, and heat.', 'True', 'False', '', '', 'True', 'When fuel, oxygen, and heat meet at a particular temperature point, the fire starts. Most of the fires are due to negligence.'),
(2, 'To escape a fire safely, you have as little as', '2 mins', '8 mins', '15 mins', '30 mins', '2 mins', 'Fire spreads rapidly and within no time, room can be full of smoke, making it difficult to breathe. Lack of oxygen can make a person disoriented, making it difficult to escape. '),
(3, 'What are common causes of Fire', 'Cooking left unattended', 'Rat eating the gas pipe', 'Short-circuit due to overloading the electric appliances or old electric wire system', 'All of the above', 'All of the above', 'Most of the fires are due to negligence and they can be prevented by being careful and cautious. Following simple safety tips like turning off the gas regulator after cooking, cleanliness, etc can prevent fire.'),
(4, 'Why is it important to know the different classes of fire', 'Because some cause greater damage than others', 'Because everyone needs to fight fire', 'Because certain fires can only be fought with a certain type of fire extinguishers', 'Because some are less dangerous to a person\'s health', 'Because certain fires can only be fought with a certain type of fire extinguishers', 'Using the wrong extinguishing method can flare-up the fire thus, it is important to know the type of fire and use the right method to extinguish it. '),
(5, 'You discover a fire, what are the things you must do', 'Raise the alarm /Let people know about Fire', 'Call the fire brigade', 'Get out of the building', 'All of the above', 'All of the above', 'First thing to do the moment you see a fire, raise an alarm and let people around you and in the building, organization know about the fire. If you are trained and have a fire extinguisher and you are confident then try to extinguish the fire when it is small.  Call the fire brigade and get out of the building and reach the safe place at the assembly point. Teamwork with planned coordination makes a difference. '),
(6, 'Once you call 101 Fire Helpline Number, you should do the following things', 'Share the cause of the fire, if you know about it', 'Share the location of the Fire incident ', 'Wait for the repeat confirmation call from the Fire Brigade control room', 'All of the above', 'All of the above', '101 is National Fire Brigade Helpline to assist the citizen to extinguish the fire and during any other emergencies.  The Fire Control room must receive maximum information and assistance from the citizen during the response to any emergencies like fire. Try to remove the parking vehicle for free movement of emergency vehicles. '),
(7, 'If you have a fire extinguisher, what you should do', 'Check the type of Fire Extinguisher ', 'Check the expiry date of the Fire extinguisher ', 'If trained and fire has still not spread, try to extinguish it', 'All of the above ', 'All of the above ', 'It is important to know how to use fire extinguisher. Training helps to identify type of fire and which fire extinguisher should be used and how to use it. Right steps help while wrong steps can put your life at risk. '),
(8, 'The best way to exit from a smoky place is to', 'run quickly', 'walk normally', 'crawl on your hands and knees and don\'t panic', 'crawl on your stomach', 'crawl on your hands and knees and don\'t panic', 'Oxygen is heavier than smoke so crawling down helps to breathe required oxygen till you reach the safe place. Lack of oxygen can be cause of breathing difficulties and disorientation making difficult to evacuate self. Wet cloth over a mouth and nose helps to prevent smoke entering the lungs, thus saves life. '),
(9, 'If your clothing catches on fire you should', 'run for help', 'soak yourself in water', 'try to put it out with your hands', 'stop, drop and roll, while covering your face', 'stop, drop and roll, while covering your face', 'When you stop, drop and rolled continuously it helps to extinguish the fire '),
(10, 'If you get a burn injury, you should immediately put ____ on it', 'Butter', 'Warm water ', 'Burn part under the running tap water', 'Ice', 'Burn part under the running tap water', 'For any type of burn injury use tap water till the burning sensation is stopped. Ice can be cause of shock due to temperature difference. Butter and warm water or any other things can worsen the burn injury and delay the healing or could because of complications '),
(11, 'If you cannot leave a room in a burning building you should', 'stuff a blanket under the closed door', 'open the window and stay as low as possible and cover the mouth with a wet cloth', 'Call 101 Fire brigade helpline number and tell you are stuck in the room and share the location of the room ', 'All of the above', 'All of the above', 'Doing above right steps helps to save life and get the help on earliest. If one is in panic and does wrong things that can reduces the chances of survival. Be calm and practice during the peace period to help you take right and prompt action during any emergency'),
(12, 'When you hear the siren of the fire brigade vehicle', 'Move your vehicle to the left lane and drive slow so the right lane becomes free to speed-up fire brigade vehicles', 'Move your vehicle to the right lane and drive fast to speed up fire brigade vehicle', 'Drive zig-zag to speed up fire brigade vehicle', 'React as if you have not heard the siren of fire brigade vehicle', 'Move your vehicle to the left lane and drive slow so the right lane becomes free to speed-up fire brigade vehicles', 'When everyone acts in similar line of moving towards left lane, right lane becomes free to speed up emergency vehicles like fire brigade vehicle and ambulance. Collective efforts by every driver can ensure even in congested traffic emergency vehicle can be speed up. Respond the moment you hear the siren of emergency vehicle.'),
(13, 'At the location of the fire', 'Gather to chit chat as if it is disaster tourism', 'The crowd will impact the functioning of the fire extinguishing operation', 'Watching the firefighting operation will help your knowledge ', 'Take picture and videos and share on social media and it will help in fire fighting', 'The crowd will impact the functioning of the fire extinguishing operation', 'Crowd and parked vehicles are obstacle in rescue operation at site of fire or building collapse situation. It is important to have a free space for the fire fighters and fire vehicles movement as every second counts in fire extinguishing operation. Fire and smoke pollute the air. Gathering at place of fire and consuming such air can be a health hazard to the crowd.'),
(14, 'Do you feel taking the basic fire fighting training will help you to prevent the fire or reduce the impact of fire?', 'Yes', 'No', '', '', 'Yes', 'Training in Fire Safety helps to take right action during any untoward incidence and take preventive steps to make the premises fire safe. '),
(15, 'To ensure your premises is Fire Safe what steps one should take', 'Have a Fire Safety Plan in place ', 'Having fire extinguishers ', 'Training in Fire Safety ', 'All of the above', 'All of the above', 'Fire Safety plan, time to time review of fire safety plan, mock drills reduces the incident of fire. Mumbai Fire Brigade and RADHEE both conduct the Fire Safety training and helps in developing the Fire safety plan and conducting mock drill for commercial buildings, hospital, residence societies, education institutes. RADHEE team has expertise in developing the evacuation plan conduct mock drills also.  \r\n');

-- --------------------------------------------------------

--
-- Table structure for table `quizgshindi`
--

CREATE TABLE `quizgshindi` (
  `id` int(2) NOT NULL,
  `Question` varchar(1000) NOT NULL,
  `Option1` varchar(1000) NOT NULL,
  `Option2` varchar(1000) NOT NULL,
  `Option3` varchar(1000) NOT NULL,
  `Option4` varchar(1000) NOT NULL,
  `correctans` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizgshindi`
--

INSERT INTO `quizgshindi` (`id`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `correctans`, `description`) VALUES
(1, 'सड़क पर एक गुड समरिटन कौन है', 'जो आपत्तकालीन वाहन को रास्ता देता है', 'जो एक दुर्घटना पीड़ित की मदद करता है', 'इन मे से कोई भी नहीं', 'ऊपर के सभी', 'ऊपर के सभी', 'गुड समरिटन का दयालु जिम्मेदार नागरिक है। गुड समरिटन के सही और त्वरित शीघ्र कदम से दुर्घटना पीड़ित या गंभीर रोगी की जान बचाई जा सकती है। एम्बुलेन्स, अग्निशमन वाहन और सायरन वाली पुलिस की गाड़ियाँ सड़क पर आपातकालीन वाहन है। जो खतरे में फंसे व्यक्ति को बचाने या किसी संगीन मरीज़ की जान बचने के लिए दौड़ रही है या अस्पताल में रोगी को छोड़ ने जा रही है। अगर आप आपातकालीन वाहन को तुरंत रास्ता देते है तो आप उनकी घटना स्थल पर या अस्पताल में जल्दी पहुंचने में मदद करते है। '),
(2, 'सड़क पर आपातकालीन वाहन के लिए कौन सी लेन है', 'दाईं लेन', 'बाईं लेन', 'बीच की लेन', 'ऊपर के सभी', 'दाईं लेन', 'दाईं लेन तेज वाहनों के लिए है। बाईं लेन भारी वाहनों के लिए है, किंतु यह सड़क पार करने के लिए इंतजार कर रहे पैदल यात्रियों, खड़ी या पार्क गाड़ियों की वजह से अधिकांशतः भीड़ भाड़ वाली रहती है। अतः दाईं लेन आपातकालीन वाहनों को तेजी से गुजरने के लिए उचित होती है।'),
(3, 'एम्बुलेंस का सायरन सुनकर प्रत्येक ड्राइवर को निम्नलिखित कदम उठाना चाहिए', 'अपने वाहन को बाईं लेन में ले जाएँ और कम गति से चलाए ताकि दाईं लेन एम्बुलेंस को तेजी से जाने के लिए खाली रहे।', 'अपना वाहन दाई लेन में ले जाए, जिससे बांई लेन से एम्बुलेंस तेजी से जाने के लिए खाली रहे।', 'टेढ़ा -मेढा ड्राइव कर एम्बुलेंस के लिए रास्ता बनाए', 'साइरन पर कोई ध्यान दिए बिना ड्राइव करें', 'अपने वाहन को बाईं लेन में ले जाएँ और कम गति से चलाए ताकि दाईं लेन एम्बुलेंस को तेजी से जाने के लिए खाली रहे।', 'जब प्रत्येक व्यक्ति आपातकालीन वाहन की साइरन सुनने पर अपने वाहन को बाईं लेन पर ले जाने और गति को धीमा करने की समान कार्रवाई करते है, तो दाईं लेन एम्बुलेंस या किसी भी आपातकालीन वाहनों को गति देने के लिए खाली हो जाती है।'),
(4, 'रास्ते में अगर आपको कोई एक्सीडेंट या बेहोश आदमी दीखता है तो आप किस सहायता (हेल्प लाइन) नंबर पर फोन करेंगे', '१०० पुलिस कंट्रोल रूम', '१०१ फायर ब्रिगेड', '१०८ एम्बुलेंस सर्विस', '१९०६ गैस लीकेज हेल्प लाइन नंबर', '१०८ एम्बुलेंस सर्विस', '१०८ एम्बुलेंस हेल्पलाइन एक निःशुल्क सेवा है। यह रोगी को बचाने और घायल का स्थिरीकरण करने और रास्ते में उपचार शुरू करने के लिए अच्छी तरह से सुसज्जित है, जिससे मरीज़ की जान बचाई जा सकती  है। १०८ की एम्बुलेंसों में कुशल पैरामेडिकल  अथवा डॉक्टर होते  है, जो अच्छी तरह प्रशिक्षित हैं कि दुर्घटना या गंभीर रोगी को कैसे बचाना है और जानते है आगे दूसरी चोटों  को कैसे रोकना है। सही जानकारी के अभाव की वजह से अधिकांशतः दयालु लोग गलत तरीके से मरीज़ को संभालते हैं जिससे मरीज़ की गौण चोटें भी उसकी मृत्यु या अपंगता का कारण बन जाती हैं।  '),
(5, 'एम्बुलेंस को साइरन कब बजाना चाहिए', 'मरीज़ को लेने जाते समय', 'मरीज़ को अस्पताल ले जाते समय', 'पेट्रोल भरवाने जाते समय', 'उपरोक्त सभी स्थिति के दौरान', 'एम्बुलेंस  एक आपातकालीन सेवा है और किसी भी  प्रकार के आपातकालीन परिस्थिति का सामना करने के लिए हमेशा २४/७ तैयार रहेना चाहिए, क्योंकि  बीमारी, दुर्घना एवं आपातकालीन परिस्थिति बताकर नहीं आती।', 'उपरोक्त सभी स्थिति के दौरान'),
(6, 'क्या आपको १०८ एम्बुलेंस हेल्पलाइन द्वारा पूछे गए सभी सवालों के जवाब देने की आवश्यकता है', 'हाँ', 'नहीं', '', '', 'हाँ', 'सभी प्रश्न दुर्घटना स्थल और स्थिति से संबंधित हैं। यह कॉल सेंटर को वास्तविक एवं मज़ाक में किए गए छलित कॉलो को अलग करने में मदद करता है। वे कॉल की प्रामाणिकता की पुष्टि करने के लिए वापस कॉल करेंगे इसलिए हर कॉल का जवाब  दें।'),
(7, 'दुर्घटना वाली जगह का सही पता और पास में किसी लैंडमार्क (खास जगह) के बारे में बताने से एम्बुलेंस हेल्प लाइन को किस प्रकार की मदद मिलेगी', 'उन्हें पता चलेगा कि कौन सी एम्बुलेंस दुर्घटना स्थल के पास है और कौन सा रास्ता सबसे जल्दी पहुँचाएगा', 'एम्बुलेंस ड्राइवर को बिना ढूंढें दुर्घटना के सही जगह पहुंचने में आसानी होगी', 'एम्बुलेंस कम से कम समय में दुर्घटना के स्थल पहुंच जायेगी', 'ऊपरवाली सभी परिस्थितियों में', 'ऊपरवाली सभी परिस्थितियों में', 'लैंडमार्क के साथ पता बताने से एम्बुलेंस ड्राइवर को दुर्घटना स्थल पर सबसे जल्दी पहुँचने वाला रास्ता पता करने में आसानी होती है। कभी कभी गूगल मैप पर भी रास्ते समझ नही आते। इसलिए अगर आप दुर्घटना वाली जगह पर खड़े रहे और एम्बुलेंस ड्राइवर को रास्ता बताते है तो एम्बुलेंस को घटना स्थल पर जल्दी से पहुंचने में मदद मिलेगी।'),
(8, 'कितनी और कैसी एम्बुलेंस भेजनी होंगी, इसके लिए एम्बुलेंस हेल्प लाइन ओपेरटर को क्या क्या जानकारी चाहिए', 'किस तरह की दुर्घटना है', 'कितने लोग घायल हुए हैं', 'किस-किस तरह के घाव हैं', 'ऊपर वाली सारी बातें', 'ऊपर वाली सारी बातें', 'दुर्घटना से संबंधित सभी जानकारी  १०८ एम्बुलेंस हेल्प लाइन  ओपेरटर के लिए ज़रूरी है। इसी जानकारी के आधार पर निर्णय लिया जाता है कि  कितनी और कैसी एम्बुलेंस भेजनी  चाहिए।'),
(9, 'एम्बुलेंस के आने तक दुर्घटना स्थल पर आपकी क्या भूमिका है', 'दुर्घटना स्थल का पता लगाने के लिए एम्बुलेंस चालक का मार्गदर्शन करना', 'यह ध्यान रखना की कोई भी दुर्घटना पीड़ित को तब तक नहीं छूता है जब तक कि वह प्रशिक्षित प्राथमिक चिकित्सक अथवा डॉकटर हो और उसके पास \"प्रथमोपचार\" की किट हो', 'यह ध्यान रखना है की कोई भी दुर्घटनाग्रस्त व्यक्ति को खाने या पीने के लिए कुछ भी नहीं देता है', 'ऊपर वाली सारी बातों का ध्यान रखना', 'ऊपर वाली सारी बातों का ध्यान रखना', 'दुर्घटना पीड़ित की मदद करने वाले एक गुड समरिटन होने के रूप में, आपको यह ध्यान रखना  चाहिए कि दुर्घटना पीड़ित को किसी भी दूसरी चोटों और जटिलताओं (अप्रशिक्षित मदद के कारण) से सुरक्षित रखा गया है और पीड़ित को एम्बुलेंस में सुरक्षित रूप से अस्पताल पहुंचाया गया है।'),
(10, 'दुर्घटना पीड़ित व्यक्ति के लिए कौन सी सहायता उचित है', 'प्रशिक्षित सहायता', 'अप्रशिक्षित सहायता', '', '', 'प्रशिक्षित सहायता', 'गुड समरिटन होने के नाते आपको  सही और गलत मदद की जानकारी होनी चाहिए| पीड़ित को अगर गलत तरीकों से हिलाया डुलाया गया, तो उसकी हालत और बिगड़ सकती है| यहाँ तक कि विकलांगता या मौत भी  हो सकती है| '),
(11, 'दुर्घटना से पीड़ित को अस्पताल ले जाने के लिए कौन सा वाहन उचित होगा', 'एम्बुलेंस', 'ऑटो रिक्शा', 'एक तंग सार्वजनिक वाहन में परिवहन', 'जो भी वाहन में परिवहन उपलब्ध है', 'एम्बुलेंस', 'एम्बुलेंस में प्राथमिक उपचार के सभी जरूरी साधनों  होते है।  जिस से पीड़ित को उसकी अवस्था और ज़रुरत के अनुसार तुरंत उपचार मिलना शुरू हो जाता है। उसमे  बैठे पैरामेडिक और डॉक्टर यह भी जानते है कि मरीज़ को सबसे अनुकूल उपचार किस अस्पताल में मिलेगा और हॉस्पिटल में दाखिले की प्रक्रिया की जानकारी होती है। एक निजी (प्राइवेट) वाहन में मरीज़ न तो लेट सकता है, न उसका कोई उपचार किया जा सकता है। गुड समरिटन को स्थानीय अस्पतालों और हॉस्पिटल में दाखिले की प्रक्रिया की जानकारी भी शायद न हो, ऐसी हालत में देर मरीज़ के लिए घातक हो सकती है। गलत तरीके एवं देरी से उपचार मिलने पर मरीज़ की स्थिति ख़राब हो सकती है और वे मर भी सकता है। '),
(12, 'यदि कोई व्यक्ति प्रथमोपचार में अप्रशिक्षित है और साथ में प्राथमिक चिकित्सा के लिए आवश्यक साधन नहीं है तो ऐसे लोगो ने दुर्घटना पीड़ित को क्यों नहीं छूना चाहिए', 'अप्रशिक्षित मदद दुर्घटना पीड़ित की हालत ज़्यादा खराब कर सकती है जिससे उसके ठीक होने में ज़्यादा समय लग सकता है', 'अप्रशिक्षित मदद दुर्घटना पीड़ित को विकलांग बना सकती है', 'अप्रशिक्षित मदद दुर्घटना पीड़ित की मौत का भी कारण बन सकती है', 'ऊपर वाली सारी बातें', 'ऊपर वाली सारी बातें', 'सही उचित मदद दुर्घटना के पीड़ित का जीवन को बचाने, विकलांगता को कम करने और उसे जल्दी ठीक होने में सहायता करती है, जिससे अस्पतालों के ऊपर का बोझ कम होता है और जिस से अन्य रोगियों के लिए खाली बेड उपलब्ध होता है।\r\nप्रथमोचार चिकित्सा सहायक बनने के लिए कम से कम ३-४ दिनों का प्रशिक्षण (३० घंटो की) और एक दिन अस्पताल के ट्रॉमा वार्ड में इंटर्नशिप करना जरूरी है। इसके बाद लिखित और प्रैक्टिकल परीक्षा होती है, जिसमे कम से कम ६०% गुण से उत्तीर्ण होना चाहिए इसके बाद हर साल रिफ्रेशर कोर्स करना जरूरी होता है जिस से ज्ञान के प्रतिधारण को सुनिश्चित करता है।\r\nप्रथमोचार चिकित्सा का प्रशिक्षण और रिफ्रेशर कोर्स करना जरूरी होता है यह सुनिश्चित करना आवश्यक है कि रोगी को ज्ञान की कमी के कारण जटिलताओं से गुजरना न पड़े।\r\n'),
(13, 'दुर्घटना पीड़ित को कुछ भी खाने पीने के लिए क्यों नहीं देना चाहिए', 'इसे से उपचार की प्रकिया में बाधा हो सकती है', 'बेहोश एवं अर्ध बेहोश मरीज़ के, सांस लेने का मार्ग में अवरोध पैदा हो सकता है जिससे मरीज़ों को साँस लेने में कठिनाई हो सकती है', 'कई बार रोगी को तत्काल सर्जरी की आवश्यकता होती है, भोजन या पानी सर्जरी के समय में देरी कर सकता है', 'ऊपर के सभी कारण', 'ऊपर के सभी कारण', 'आप जानते हैं, किसी भी सर्जरी से पहले, डॉक्टर ६-८ घंटे पहले खाने पीने के लिए मनाई करते है। यदि रोगी को पानी या खाने पीने के लिए कुछ दिया जाता है, तो सर्जरी में देरी होगी, जिससे रोगी की स्थिति गंभीर जाएगी और मृत्यु भी हो सकती है। '),
(14, 'दुर्घटना स्थल पर भीड़ दुर्घटना पीड़ित को कैसे प्रभावित करती है', 'अर्धमूर्च्छित दुर्घटना पीड़ित कुछ बताने का प्रयास कर सकते है लेकिन भीड़ के कारण उसकी आवाज़ अनसुनी रह जाती है', 'भीड़ में अनजाने में कोई दुर्घटना पीड़ित को छू सकता है जिससे दुर्घटना पीड़ित की स्थिति और ख़राब हो सकती है', 'भीड़ वाली जगह पर ऑक्सीजन कम होता है और इसकी वजह से दुर्घटना पीड़ित की तकलीफ़ बढ़ सकती है', 'उपरोक्त सभी कारण', 'उपरोक्त सभी कारण', 'गुड समरिटन होने के नाते आपको एक दुर्घटना पीड़ित की मदद करने के लिए सभी सही कदम उठाने चाहिए। आपको उस भीड़ का हिस्सा नहीं बनना चाहिए जो रोगी तक सही मदद पहुँचने में देरी का कारण है।'),
(15, 'नीचे दिए गए किस उपाय से एक्सीडेंट पीड़ित की जान बचाई जा सकती है', 'वीडियो या चित्र लें और सोशल मीडिया साइट पर साझा करें', 'भीड़ का हिस्सा बनें और देखें कि दूसरे क्या कर रहे हैं', '१०८ एम्बुलेंस हेल्पलाइन नंबर पर कॉल करें और एम्बुलेंस आने तक प्रतीक्षा करें', 'अनदेखा करें और अपनी यात्रा को आगे बढ़ाएं', '१०८ एम्बुलेंस हेल्पलाइन नंबर पर कॉल करें और एम्बुलेंस आने तक प्रतीक्षा करें', 'अब तक आप एम्बुलेंस और १०८ एम्बुलेंस हेल्पलाइन नंबर का महत्व जानते है। एम्बुलेंस १५-२० मिनट में घटना स्थल पर पहुँच जाती है। आपकी त्वरित कार्रवाई और १५-२० मिनट का समय किसी के जीवन में और उसके परिवार में बहुत बड़ा परिवर्तन ला सकता है। अब आप एम्बुलेंस आने तक प्रतीक्षा करने का महत्व समझ चुके हैं जो दुर्घटना पीड़ित के जीवन में बहुत बड़ा फर्क का कारण बनता है।');

-- --------------------------------------------------------

--
-- Table structure for table `quizgsmarathi`
--

CREATE TABLE `quizgsmarathi` (
  `id` int(2) NOT NULL,
  `Question` varchar(1000) NOT NULL,
  `Option1` varchar(1000) NOT NULL,
  `Option2` varchar(1000) NOT NULL,
  `Option3` varchar(1000) NOT NULL,
  `Option4` varchar(1000) NOT NULL,
  `correctans` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizgsmarathi`
--

INSERT INTO `quizgsmarathi` (`id`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `correctans`, `description`) VALUES
(1, 'रस्त्यावरील जबाबदार नागरिक कोण आहे', 'जो इमर्जन्सी व्हेईकलला (आपत्कालीन वाहन) मार्ग देतो', 'जो अपघातग्रस्ताला मदत करतो ', 'वरील सर्व', 'वरीलपैकी कोणी नाही', 'वरील सर्व', 'आपण जबाबदार नागरिक आहात. जबाबदार नागरिकांची तत्परता आणि योग्य कृती अपघातातील पीडित किंवा गंभीर रूग्णाचे प्राण वाचवेल.\r\nजेव्हा आपण आपत्कालीन वाहनाचा (रुग्णवाहिका) सायरन ऐकता तेव्हा आपले वाहन डावीकडे घ्या आणि आपले वाहन हळू चालवा त्या मुळे रुग्णवाहिकेला जाण्यासाठी मार्ग मोकळा होईल. जेव्हा आपण एखाद्या अपघातातील पीडित व्यक्तीस पहाता तेव्हा त्यांची मदत करा \r\nअम्बुलेन्स, फायर ब्रिगेड आणि सायरन असलेली पोलिसांची वाहने ही रस्त्यावर आपत्कालीन वाहने आहेत, जी एखाद्याला धोकादायक संकटातून वाचवण्यासाठी किंवा गंभीर रुग्णांना मदत करण्यासाठी धावपळ करतात. त्यांच्यासाठी मार्ग तयार करण्याच्या आपल्या त्वरित कृती मुळे त्यांना लवकरात लवकर घटना स्थळावर पोहोचण्यास मदत होईल.'),
(2, 'रस्त्यावर आपत्कालीन वाहनांसाठी कोणती लेन आहे', 'उजवी बाजू', 'डावी बाजू', 'मध्य मार्ग', 'वरील सर्व', 'उजवी बाजू', 'वेगवान वाहनांसाठी उजवीकडील लेन आहे. डावी बाजूची लेन जड वाहनांकडून वापरली जाते आणि वाहने थांबविली किंवा पार्क केली जातात आणि पादचारी  रस्ता ओलांडण्याच्या प्रतीक्षेत थांबलेले असतात म्हणून आपत्कालीन वाहन वेगाने जाण्यासाठी उजवीकडील लेन योग्य आहे.'),
(3, 'रुग्णवाहिकेचा सायरन ऐकून, प्रत्येक वाहनचालकाने खालील पैकी कुठली कृती केली पाहिजे ', 'आपले वाहन डाव्या लेनवर हलवा जेणेकरुन रुग्णवाहिकेला वेगवान करण्यासाठी उजवीकडेची लेन मोकळी होईल', 'आपले वाहन उजव्या लेन मथ्ये ठेवा जेणेकरून रुग्णवाहिका वेगवान करण्यासाठी डावीकडे लेन मोकळी होईल.', 'रुग्णवाहिकेसाठी जागा तयार करण्यासाठी झिग-झॅग चालवा', 'सायरनकडे दुर्लक्ष करा आणि तसेच वाहन चालविणे सुरू ठेवा', 'आपले वाहन डाव्या लेनवर हलवा जेणेकरुन रुग्णवाहिकेला वेगवान करण्यासाठी उजवीकडेची लेन मोकळी होईल', 'जेव्हा प्रत्येकजण आपल्या वाहनास डावीकडच्या बाजूने आणि वेग कमी करण्याची एक समान कृती करतो तेव्हा उजवी कडील लेन रुग्णवाहिका किंवा कोणत्याही आपत्कालीन वाहनांना वेगवान करायला मोकळी होते.'),
(4, 'जेव्हा आपण एखादा रस्ता अपघात किंवा रस्त्यावर एखादी बेशुद्ध व्यक्ती पाहता तेव्हा आपण कोणत्या हेल्पलाइन नंबरवर माहिती द्याल', '100 पोलिस नियंत्रण कक्ष', '101 अग्निशमन दल', '108 रुग्णवाहिका सेवा', '1906 गॅस गळती हेल्पलाइन क्रमांक', '108 रुग्णवाहिका सेवा', '१०८/१०२ रुग्णवाहिका हेल्पलाईन ही एक विनामूल्य सेवा आहे. ही रुग्णाची मदत करण्यासाठी आणि रुग्णाला स्थिर करण्यासाठी आणि मार्गस्थ असताना उपचार सुरू करण्यासाठी सुसज्ज आहे, त्यायोगे एक प्राण वाचतील.\r\n१०८/१०२ रुग्णवाहिका पॅरामेडिकल किंवा डॉक्टरद्वारे हाताळल्या जातात त्या दुर्घटनेला कसे हाताळावे किंवा गंभीर रूग्णचा दुय्यम जखमांना कसे रोखू शकेल हे चांगल्या प्रकारे ज्ञात असतात. मृत्यू किंवा अपंगत्वामुळे होणाऱ्या दुय्यम जखमां पैकी बहुतेक दुय्यम जखमां वेळेस प्रशिक्षित नसलेल्या नागरिकांकडून अपघातग्रस्त व्यक्तीं सोबतच्या अयोग्य मदतीमुळे घडतात. '),
(5, 'रुग्णवाहिकेने कोणत्या परस्थितीत मध्ये सायरनचा वापर केला पाहिजे', 'जेव्हा रुग्णला आणण्या साठी जात असताना ', 'जेव्हा रूग्णाला दवाखान्यात सोडताना', 'जेव्हा इंधन (पेट्रोल) भरण्यासाठी जाताना', 'वरील सर्व परिस्थिती दरम्यान', 'वरील सर्व परिस्थिती दरम्यान', 'रुग्णवाहिका आपत्कालीन वाहन आहे आणि २४ तासा मध्ये कोणत्याही वेळी कोणत्याही प्रकारच्या आपत्कालीन परिस्थितीसाठी सज्ज असणे आवश्यक आहे कारण वैद्यकीय किंवा अपघाती आपत्कालीन परिस्थिती कधीच सांगून येत नाही.'),
(6, 'तुम्हाला १०८/१०२ अ‍ॅम्ब्युलन्स हेल्पलाईनद्वारे विचारलेल्या सर्व प्रश्नांची उत्तरे देण्याची गरज आहे का', 'होय', 'नाही', '', '', 'होय', 'सर्व प्रश्न अपघातची जागा आणि परिस्थितीशी संबंधित आहेत. हे कॉल सेंटरला खरे आणि खोटे कॉल वेगळे करण्यास मदत करते. ते कॉलची सत्यता पडताळणी करण्यासाठी परत कॉल करतील म्हणून प्रत्येक कॉलला प्रत्युत्तर द्या.'),
(7, 'अ‍ॅम्ब्युलन्स हेल्पलाईन सह अपघाताच्या जागेचा पत्ता व खुणा सामायिक करणे कसे उपयुक्त ठरेल', 'अपघातस्थळाच्या सर्वात जवळची उपलब्ध रुग्णवाहिका आणि जलद मार्ग ओळखणे', 'रुग्णवाहिका चालक शोध न घेता अपघाताच्या ठिकाणी पोहोचू शकेल', 'अपघातस्थळी जाण्यासाठी रुग्णवाहिका कमीतकमी वेळेत पोहोचेल', 'वरील सर्व', 'वरील सर्व', 'रुग्णवाहिका चालकाला अपघात स्थळाचा पत्त्यावर कमीतकमी कालावधीत पोहोचण्यासाठी, अपघात स्थळाच्या जवळ पासच्या चे महत्त्वाच्या खुणा असलेल्या स्थळाची माहिती रुग्णवाहिका चालकाला सर्वात कार्यक्षम आणि वेगवान मार्ग ओळखण्यास मदत होते. कधीकधी रुग्णवाहिका चालकास नकाशावर अपघात साइट शोधण्यास कठीण होते, अशावेळी रुग्णवाहिका चालकास लवकरात लवकर अपघातस्थळी पोहोचण्यासाठी दिशानिर्देश आणि मार्गदर्शनासाठी साइटवर आपली उपस्थिती महत्त्वपूर्ण आहे.'),
(8, 'आंबुलन्स हेल्पलाइन ऑपरेटरला रुग्णवाहिका पाठविण्यासाठी कोणती माहिती उपयुक्त आहे', 'अपघाताचा प्रकार', 'जखमी झालेल्यांची संख्या', 'जखमांचा प्रकार\r\n', 'वरील सर्व', 'वरील सर्व', 'अपघाताशी संबंधित सर्व माहिती १०८/१०२ अ‍ॅम्ब्युलन्स हेल्पलाइन ऑपरेटरला अपघातग्रस्तांना वाचविण्यासाठी किती रुग्णवाहिकांची आवश्यकता आहे आणि एम्बुलेंस कशासह सुसज्ज असावी हे महत्वाचे ठरवण्या साठी मदत होइल.'),
(9, 'रुग्णवाहिका येईपर्यंत अपघाताच्या ठिकाणी आपली काय भूमिका असावी', 'अपघाताची जागा शोधण्यासाठी रुग्णवाहिका चालकास मार्गदर्शन करणे', 'सुसज्ज फर्स्ट एडर किंवा डॉक्टरप्रमाणे प्रशिक्षण घेतल्या शिवाय कोणीही पीडित व्यक्तीला स्पर्श करणार नाही याची खात्री करण्यासाठी', 'अपघातग्रस्ताला कुणीही अन्न पाणी देत नाही याची खात्री करुन घेण्यासाठी', 'वरील सर्व', 'वरील सर्व', 'अपघातग्रस्ताला मदत करणारा जबाबदार नागरिक म्हणून, आपण हे सुनिश्चित केले पाहिजे की पीडित व्यक्तीला कोणतीही दुय्यम इजा आणि गुंतागुंत (अप्रशिक्षित मदतीमुळे) पासून सुरक्षित ठेवण्यात आले आहे आणि पीडित व्यक्तीला रुग्णवाहिकेत सुरक्षितपणे हलविले गेले आहे.'),
(10, 'अपघातग्रस्तांसाठी कोणती मदत योग्य मदत आहे', 'प्रशिक्षित मदत', 'अप्रशिक्षित मदत', '', '', 'प्रशिक्षित मदत', 'एक चांगला जबाबदार नागरिक म्हणून, आपल्याला योग्य मदत आणि चुकीची मदत यांच्यातील फरक समजला पाहिजे. अपघातग्रस्त व्यक्तीला चुकीच्या पद्धतीने हाताळल्यास रुग्णाची स्थिती बिघडू शकते, शॉकमुळे अपंगत्व किंवा मृत्यू होऊ शकतो.'),
(11, 'अपघातग्रस्तांना रूग्णालयात नेण्यासाठी योग्य वाहन काय आहे', 'अम्बुलेन्स', 'ऑटो ', 'सार्वजनिक वाहन', 'खाजगी वाहन', 'अम्बुलेन्स', 'अपघात स्थळा वर आणि हॉस्पिटलच्या वाटेतचा मार्गा वर उपचार सुरू करण्यासाठी रुग्णवाहिका वैद्यकीय दृष्ट्या सुसज्ज आहेत आणि त्या मध्ये रुग्णाला स्थिर करून जीवन वाचवता येईल. पॅरामेडिक्स किंवा डॉक्टरांद्वारे हाताळले गेले आहे ज्यास जाणीव आहे की कोणत्या रुग्णालयाला दुखापतीच्या प्रकारांनुसार रुग्णाला उपचार करता येतील आणि रुग्णालयातील प्रवेश प्रक्रियेची माहिती सुध्धा आहे.\r\nखाजगी वाहनात रुग्ण आरामात पडून राहू शकत नाही आणि त्यावर मार्गात उपचार करता येणार नाहीत, जबाबदार नागरिकांना हॉस्पिटलचे स्थान आणि प्रवेश प्रक्रियेची माहिती नसते. गैरसमज आणि विलंब यामुळे रुग्णाची स्थिती गंभीर होऊ शकते आणि मृत्यू होऊ शकतो'),
(12, 'प्रथम सहाय्यक म्हणून प्रशिक्षण घेतल्याशिवाय आणि अपघातग्रस्ताला प्रथमोपचारासाठी आवश्यक उपकरणे उपलब्ध नसल्यास आपण अपघातग्रस्ताला स्पर्श का करु नये', 'अप्रशिक्षित मदत अपघातग्रस्ताची परस्थिती बिघडवू शकते आणि बरे होण्यास उशीर करू शकते', 'अप्रशिक्षित मदत अपंगत्वाचे कारण होऊ शकते', 'अप्रशिक्षित मदत दुर्घटनाग्रस्ताच्या धक्का आणि मृत्यूचे कारण बनु शकते', 'वरील सर्व', 'वरील सर्व', 'जीव वाचविणे, अपंगत्व कमी करण्यात आणि लवकर बरे होण्यास प्रोत्साहित करण्यासाठी योग्य मदत महत्त्वपूर्ण ठरू शकते. हे आरोग्य सेवेच्या पायाभूत सुविधांवरील ओझे कमी करेल आणि इतर रुग्णांसाठी रिक्त बेड तयार करेल.\r\nप्रथोपाचारचे प्रशिक्षण म्हणजे ३-४ दिवसांचे प्रशिक्षण (३० तास), एक दिवस ट्रॉमा वार्डमध्ये इंटर्नशिप घेतलेले असावे आणि लेखी आणि प्रॅक्टिकल अभ्यासक्रमाची परीक्षा दिली असेल आणि ६०% गुणांसह उत्तीर्ण झाला असेल आणि दरवर्षी रिफ्रेशर अभ्यासक्रम ज्ञान धारणा सुनिश्चित करते.\r\nप्रथमोपचार प्रशिक्षण आणि रीफ्रेशर अभ्यासक्रम घेणे आवश्यक आहे. हे सुनिश्चित करणे आवश्यक आहे की ज्ञानाच्या अभावामुळे रुग्णाच्या परिस्थितीत गुंतागुंत होणार नाही.'),
(13, 'आपण अपघातग्रस्ताला पाणी आणि खाण्यास पिण्यास काहीही देऊ नये का', 'याचा परिणाम भविष्यातील उपचार करताना होऊ शकतो', 'बेशुद्ध किंवा अर्ध-जागरूक रूग्णांसाठी, त्यामुळे श्वसन मार्ग चोक होऊ शकतो आणि श्वास घेण्यास अडचण होऊ शकते ', 'ज्या रुग्णांना त्वरित शस्त्रक्रिया आवश्यक असेल, त्या मध्ये अन्न किंवा पाणी यांचे सेवन  शस्त्रक्रियेसाठी उशीर होऊ शकतो ', 'वरील सर्व', 'वरील सर्व', 'तुम्हाला माहिती आहे, कोणत्याही शस्त्रक्रियेपूर्वी रुग्णालात दाखल झाल्या नंतर ६-८ तास आधी न खाण्याची सूचना देतात. जर रुग्णाला पाणी किंवा अन्न दिले गेले तर शस्त्रक्रियेला उशीर होईल त्यां मुळे रुग्णाची स्थिती बिघडू शकते आणि मृत्यू देखील होऊ शकतो.'),
(14, 'अपघाताच्या ठिकाणी गर्दी अपघातग्रस्तावर कसा परिणाम करते', 'अर्धवट शुद्धीवर असलेला अपघातग्रस्त काही बोलण्याचा प्रयत्न करु शकतात परंतु गर्दीच्या आवाजामुळे त्याचा आवाज ऐकला जाऊ शकत नाही', 'गर्दीमुळे नकळत रुग्णाला स्पर्श होऊ शकतो आणि अपघातग्रस्तांची प्रकृती अधिकच खराब होऊ शकते', 'गर्दीच्या ठिकाणी ऑक्सिजन कमी असतो, तो अपघातग्रस्ताच्या स्थितीवर परिणाम करतो', 'वरील सर्व', 'वरील सर्व', 'जबाबदार नागरिकाने अपघातग्रस्ताला मदत करण्यासाठी सर्व योग्य पावले उचलली पाहिजेत. आपण गर्दीचा भाग होऊ नये किंवा त्या रूग्णांपर्यंत पोहोचण्यास योग्य मदत करण्यास विलंब करणाऱ्या गर्दीचा भाग होऊ नये.'),
(15, 'अपघातातील व्यक्तीचे प्राण वाचविण्यामध्ये खालील कृती केल्याने फरक पडेल ', 'व्हिडिओ किंवा चित्र घ्या आणि सोशल मीडिया साइटवर शेअर करा', 'गर्दीत भाग घ्या आणि इतर काय करीत आहेत ते पहा', '१०८/१०२ रुग्णवाहिका हेल्पलाइन क्रमांकावर कॉल करा आणि रुग्णवाहिका येईपर्यंत थांबा', 'दुर्लक्ष करा आणि आपला प्रवास पुढे चालू ठेवा', '१०८/१०२ रुग्णवाहिका हेल्पलाइन क्रमांकावर कॉल करा आणि रुग्णवाहिका येईपर्यंत थांबा', 'आतापर्यंत आपणास रुग्णवाहिकेचे महत्त्व आणि १०८/१०२ रुग्णवाहिका हेल्पलाईन क्रमांकाची माहिती झाली असेलच. १५-२० मिनिटांत अंबुलेन्स येते. तुमची त्वरित कृती आणि १५-२० मिनिटे एखाद्याच्या आयुष्यात आणि त्याच्या/तिच्या कुटुंबावर परिणाम करू शकतात. आता आपणास माहित आहे की रुग्णवाहिका येईपर्यंत प्रतीक्षा करण्याचे महत्त्व खूप आहे');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `quiz1`
--
ALTER TABLE `quiz1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizcpr`
--
ALTER TABLE `quizcpr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizfa`
--
ALTER TABLE `quizfa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizfs`
--
ALTER TABLE `quizfs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizgshindi`
--
ALTER TABLE `quizgshindi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizgsmarathi`
--
ALTER TABLE `quizgsmarathi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
