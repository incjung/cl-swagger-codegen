(ql:quickload "drakma")
(ql:quickload "cl-json")




;;
;; summary : Modifies a specific user&#39;s access to a cluster or volume.
;; description : The `acl edit` command grants one or more specific volume or cluster permissions to a user. To use the `acl edit` command, you must have administrative (a) permissions on the volume and cluster for which you are running the command. The permissions are specified as a comma-separated list of permission codes. See [acl](http://maprdocs.mapr.com/home/ReferenceGuide/acl.html). You must specify either a `user` or a `group`. When the `type` is `volume`, a volume name must be specified using the `name` parameter.
;; * path : /ACL/EDIT
;;
(defun get-acl-edit (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Modifies the ACL for a cluster or volume.
;; description : The `acl set` command specifies the entire ACL for a cluster or volume. Any previous permissions are overwritten by the new values, and any permissions omitted are removed. To use the `acl set` command, you must have administrative (a) permissions on the volume and cluster for which you are running the command. The permissions are specified as a comma-separated list of permission codes. See [acl](http://maprdocs.mapr.com/home/ReferenceGuide/acl.html). You must specify either a `user` or a `group`. When the `type` is `volume`, a volume name must be specified using the `name` parameter.\n\n \n\nNote: The `acl set` command removes any previous ACL values. If you wish to preserve some of the permissions, you should either use the  [`acl edit`](http://maprdocs.mapr.com/home/ReferenceGuide/acl-edit.html)  command instead of `acl set`, or use  [`acl show`](http://maprdocs.mapr.com/home/ReferenceGuide/acl-show.html)  to list the values before overwriting them.
;; * path : /ACL/SET
;;
(defun get-acl-set (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays the ACL associated with an object (cluster or a volume).
;; description : 
;; * path : /ACL/SHOW
;;
(defun get-acl-show (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Clears one or more alarms. Permissions required: fc or a .
;; description : 
;; * path : /ALARM/CLEAR
;;
(defun get-alarm-clear (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Clears all alarms. Permissions required: fc or a .
;; description : 
;; * path : /ALARM/CLEARALL
;;
(defun get-alarm-clearall (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays the configuration of alarm notifications. Permission required: login
;; description : 
;; * path : /ALARM/CONFIG/LOAD
;;
(defun get-alarm-config-load (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Sets notification preferences for alarms. Permissions required: fc or a .
;; description : Alarm notifications can be sent to the default email address and a specific email address for each named alarm. If `individual` is set to `1` for a specific alarm, then notifications for that alarm are sent to the default email address for the alarm type. If a custom email address is provided, notifications are sent there regardless of whether they are also sent to the default email address.
;; * path : /ALARM/CONFIG/SAVE
;;
(defun get-alarm-config-save (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists alarms in the system. Permissions required: login .
;; description : You can list all alarms, alarms by type (Cluster, Node or Volume), or alarms on a particular node or volume. To retrieve a count of all alarm types, pass `1` in the `summary` parameter. You can specify the alarms to return by filtering on type and entity. Use `start` and `limit` to retrieve only a specified window of data.

;; * path : /ALARM/LIST
;;
(defun get-alarm-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays a list of alarm names. Permissions required: login
;; description : 
;; * path : /ALARM/NAMES
;;
(defun get-alarm-names (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Raises a specified alarm or alarms. Permissions required: fc or a .
;; description : 
;; * path : /ALARM/RAISE
;;
(defun get-alarm-raise (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Enables and disables auditing of operations that are related to the administration of a MapR cluster.
;; description : Only the `mapr` user for the cluster can run this command. For more information about the mapr user, see [Managing Users and Groups](http://maprdocs.mapr.com/home/AdministratorGuide/c-managing-users-and-groups.html#Managing-Users-and-Groups-rootisusedtoinstallM-d3e62).\n\n \n\nFor information about auditing cluster-administration operations, see [Auditing of Activity Related to Cluster Administration](http://maprdocs.mapr.com/home/SecurityGuide/AuditingClusterAdminActivity.html#AuditingofActivityRelatedtoClusterAdministration).
;; * path : /AUDIT/CLUSTER
;;
(defun get-audit-cluster (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Enables and disables auditing of filesystem and table operations.
;; description : For a list of these operations, see [Auditing of Filesystem Operations and Table Operations](http://maprdocs.mapr.com/home/SecurityGuide/Auditing-FilesystemTableOperations.html#AuditingofFilesystemOperationsandTableOperations).\n\n \n\nOnly the `mapr` user for the cluster can run this command. For more information about the mapr user, see [Managing Users and Groups](http://maprdocs.mapr.com/home/AdministratorGuide/c-managing-users-and-groups.html).
;; * path : /AUDIT/DATA
;;
(defun get-audit-data (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays whether auditing of cluster-management operations and auditing data-access operations are enabled. Also, displays the maxSize and retention values for these two levels of auditing.
;; description : Only the `mapr` user for the cluster can run this command. For more information about the `mapr` user, see [Managing Users and Groups](http://maprdocs.mapr.com/home/AdministratorGuide/c-managing-users-and-groups.html#Managing-Users-and-Groups-rootisusedtoinstallM-d3e62).
;; * path : /AUDIT/INFO
;;
(defun get-audit-info (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Deletes the list of MapR gateways from a source MapR cluster.
;; description : Source MapR clusters can use such lists to locate the gateways that enable replication of table data to a particular MapR cluster or indexing of table data in a particular Elasticsearch cluster. You create lists of gateways by running the `maprcli cluster gateway set` command.\n\n \n\nThere are three methods of specifying the location of gateways to a MapR cluster that is a source for table replication or indexing in Elasticsearch. If a source MapR cluster relies on DNS records to find out where gateways are located, or the cluster relies on the `mapr-clusters.conf` file to locate gateways, there is no list for the cluster gateway delete command to delete. \n\n \n\nNote: Deleting a list of gateways with the `maprcli cluster gateway delete` command does not uninstall the listed gateways from the MapR cluster where they are located.
;; * path : /CLUSTER/GATEWAY/DELETE
;;
(defun get-cluster-gateway-delete (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists the MapR gateways that a source MapR cluster is using.
;; description : The source MapR cluster could be using the MapR gateways either for replication of table data to a destination MapR cluster or for the indexing of data in an Elasticsearch cluster.\n\n \n\nThis list of gateways is created by the `maprcli cluster gateway set` command.
;; * path : /CLUSTER/GATEWAY/GET
;;
(defun get-cluster-gateway-get (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists all of the gateways that a source MapR cluster is using.
;; description : The source MapR cluster is using gateways either for replication of table data to destination MapR clusters or for the indexing of table data in Elasticsearch clusters.\n\n \n\nThis list is created by the `maprcli cluster gateway set` command.
;; * path : /CLUSTER/GATEWAY/LIST
;;
(defun get-cluster-gateway-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists the gateways that are configured on the MapR cluster where this command is run.
;; description : 
;; * path : /CLUSTER/GATEWAY/LOCAL
;;
(defun get-cluster-gateway-local (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists the gateways configured on MapR cluster that are up and running at the time that the command is issued.
;; description : Execute this command on a source MapR cluster to find out how many gateways are available for table replication to a destination MapR cluster or for indexing table data in an Elasticsearch cluster.\n\n \n\nThis command uses the following criteria to get the list:\n\n \n \n*  \n\nIf the locations of the gateways were specified with the `marpcli cluster gateway set` command, the maprcli cluster gateway resolve command returns the list of the gateways.\n\n  \n*  \n\nIf the locations of the gateways were specified with a DNS record only, this command performs a DNS lookup for gateways on the specified MapR cluster and returns the list that it finds.\n\n  \n*  \n\nIf neither of the previous methods was used to specify the locations of the gateways, this command assumes that gateways are located on the CLDB nodes configured in the `mapr-clusters.conf` file on the MapR cluster where the command is executed.\n\n  \n\n \n\nNote: Unresponsive gateways are not included in the list.\n\n \n\nFor more information about gateways, see [ MapR Gateways](http://maprdocs.mapr.com/home/Gateways/MapRGateways.html).
;; * path : /CLUSTER/GATEWAY/RESOLVE
;;
(defun get-cluster-gateway-resolve (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Specifies the locations of the MapR gateways that a source MapR cluster can use for table replication to a destination MapR cluster or for indexing table data in an Elasticsearch cluster.
;; description : In addition to this method, there are two other methods that you can use to specify the locations of gateways that a source MapR cluster can use when replicating to a particular MapR cluster or when indexing in an Elasticsearch cluster. See [Configuring a MapR Gateway Master-Slave Topology](http://maprdocs.mapr.com/home/Gateways/ConfiguringMapRGatewaysForTRAndI.html) for details about them.
;; * path : /CLUSTER/GATEWAY/SET
;;
(defun get-cluster-gateway-set (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays the cluster-wide default for the MapReduce mode.
;; description : 
;; * path : /CLUSTER/MAPREDUCE/GET
;;
(defun get-cluster-mapreduce-get (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Sets the cluster-wide MapReduce mode.
;; description : 
;; * path : /CLUSTER/MAPREDUCE/SET
;;
(defun get-cluster-mapreduce-set (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays information about the cluster configuration.
;; description : 
;; * path : /CONFIG/LOAD
;;
(defun get-config-load (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Saves configuration information, specified as key/value pairs. Permissions required: fc or a .
;; description : See the [Configuration Fields](http://maprdocs.mapr.com/home/ReferenceGuide/config.html) table.
;; * path : /CONFIG/SAVE
;;
(defun get-config-save (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays a summary of information about the cluster.
;; description : 
;; * path : /DASHBOARD/INFO
;;
(defun get-dashboard-info (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Acknowledges the most recent Dial Home on the cluster. Permissions required: login
;; description : 
;; * path : /DIALHOME/ACKDIAL
;;
(defun get-dialhome-ackdial (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Enables Dial Home on the cluster. Permissions required: fc or a
;; description : 
;; * path : /DIALHOME/ENABLE
;;
(defun get-dialhome-enable (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays the date of the last successful Dial Home call. Permissions required: fc or a .
;; description : 
;; * path : /DIALHOME/LASTDIALED
;;
(defun get-dialhome-lastdialed (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Returns a compressed metrics object. Permissions required: login.
;; description : 
;; * path : /DIALHOME/METRICS
;;
(defun get-dialhome-metrics (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays the Dial Home status. Permissions required: login.
;; description : 
;; * path : /DIALHOME/STATUS
;;
(defun get-dialhome-status (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Adds one or more disks to the specified node. Permissions required: fc or a .
;; description : 
;; * path : /DISK/ADD
;;
(defun get-disk-add (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists the disks on a node.
;; description : 
;; * path : /DISK/LIST
;;
(defun get-disk-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists all disks.
;; description : 
;; * path : /DISK/LISTALL
;;
(defun get-disk-listall (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Removes a disk from MapR-FS. Permissions required: fc or a .
;; description : The `disk remove` command does not remove a disk containing unreplicated data unless forced. To force disk removal, specify `-force` with the value `1`.\n\n \n\nNote: \n \n* Only use the `-force 1` option if you are sure that you do not need the data on the disk. This option removes the disk without regard to replication factor or other data protection mechanisms, and may result in permanent data loss. \n* Removing a disk in the storage pool that contains Container ID 1 will stop your cluster. Container ID 1 contains CLDB data for the master CLDB. Run `disk remove` without the `-force 1` option first and examine the warning messages to make sure you aren't removing the disk with Container ID 1. If you try to remove a disk associated with the storage pool that contains Container ID 1, you will see an error message similar to the following: \n\n```\nERROR (151) -  Failed operation for disk /dev/sdb, Operation may bring \ndown cluster due to loss of cluster meta-data.\n```\n\n If necessary, run the following command for information on the disk associated with the storage pool that contains Container ID 1: \n\n```\n/opt/mapr/server/mrconfig info dumpcontainers  | grep cid:1\n```\n\n The command output may look similar to the following: \n\n```\ncid:1 volid:1 sp:SP1:/dev/sdb spid:82380c287085486f0058112ecf016b76 \nprev:0 next:0 issnap:0 isclone:0 deleteinprog:0 fixedbyfsck:0 stale:0 \nquerycldb:0 resyncinprog:0 shared:0 owned:206 logical:206 snapusage:0 \nsnapusageupdated:1 ismirror:0 isrwmirrorcapable:0 role:1 maxUniq:2100150 \nisResyncSnapshot:0 snapId:0 port:5660\n```\n\n To safely remove such a disk, perform a [CLDB Failover](http://maprdocs.mapr.com/home/AdministratorGuide/CLDB-Failover.html#CLDB-Failover-TheCLDBserviceautoma-d3e78) to make one of the other CLDB nodes the primary CLDB, then remove the disk as normal.
;; * path : /DISK/REMOVE
;;
(defun get-disk-remove (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays information about an entity.
;; description : 
;; * path : /ENTITY/INFO
;;
(defun get-entity-info (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists and displays information about entities.
;; description : 
;; * path : /ENTITY/LIST
;;
(defun get-entity-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Modifies a user or group quota or email address. Permissions required: fc or a .
;; description : 
;; * path : /ENTITY/MODIFY
;;
(defun get-entity-modify (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Removes an entity (specified by name and type).
;; description : Note: Entity can be removed only when there are no resources associated with the entity.
;; * path : /ENTITY/REMOVE
;;
(defun get-entity-remove (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Changes the priority of the specified job.
;; description : 
;; * path : /JOB/CHANGEPRIORITY
;;
(defun get-job-changepriority (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Kills a specified job.
;; description : 
;; * path : /JOB/KILL
;;
(defun get-job-kill (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Creates symbolic links to all the logs relating to the activity of a specific job.
;; description : The `maprcli job linklogs` command works with the [Centralized Logging](http://maprdocs.mapr.com/home/AdministratorGuide/Centralized-Logging.html#Centralized-Logging-MapRsCentralizedLog-d3e72) to provide a job-centric view or an application-centric view of all log files generated during job or application execution.\n\n \n\n The output of `job linklogs` is a directory populated with symbolic links to all log files related to the specified job(s) or to the application. The command can be performed during or after a job or application is processed.
;; * path : /JOB/LINKLOGS
;;
(defun get-job-linklogs (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Retrieves detailed information about the jobs running on the cluster including histograms and line charts for job metrics.
;; description : A Hadoop job sets the rules that the JobTracker service uses to break an input data set into discrete tasks and assign those tasks to individual nodes. Use the `job table` command to retrieve [job metrics](http://maprdocs.mapr.com/home/AdministratorGuide/JobMetrics-Analyzing.html#Analyzing-Job-Metrics-TheMapRMetricsservic-d3e72) about the jobs running on your cluster. The job metric data includes the number of task attempts for jobs on the cluster, job duration, job computing resource use (CPU and memory), and job data throughput (both records and bytes per second). The metrics data can be formatted for histogram display or line chart display. In order to issue the `job table` command, the mapr-metrics package must be installed on all the nodes where webserver and jobtracker are configured to run.
;; * path : /JOB/TABLE
;;
(defun get-job-table (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Adds a license. Permissions required: fc or a .
;; description : The license can be specified either by passing the license string itself to `license add`, or by specifying a file containing the license string.
;; * path : /LICENSE/ADD
;;
(defun get-license-add (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Adds a certificate revocation list (CRL). Permissions required: fc or a .
;; description : 
;; * path : /LICENSE/ADDCRL
;;
(defun get-license-addcrl (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays the features authorized for the current license. Permissions required: login
;; description : 
;; * path : /LICENSE/APPS
;;
(defun get-license-apps (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists licenses on the cluster. Permissions required: login. For best results, use the -json option when running the command.
;; description : 
;; * path : /LICENSE/LIST
;;
(defun get-license-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists certificate revocation lists (CRLs) on the cluster. Permissions required: login .
;; description : 
;; * path : /LICENSE/LISTCRL
;;
(defun get-license-listcrl (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Removes a license. Permissions required: fc or a .
;; description : 
;; * path : /LICENSE/REMOVE
;;
(defun get-license-remove (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays the cluster ID for use when creating a new license. Permissions required: login .
;; description : 
;; * path : /LICENSE/SHOWID
;;
(defun get-license-showid (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Generates a Nagios Object Definition file that describes the cluster nodes and the services running on each.
;; description : 
;; * path : /NAGIOS/GENERATE
;;
(defun get-nagios-generate (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Allows host IDs to join the cluster after duplicates have been resolved.
;; description : When the CLDB detects duplicate nodes with the same host ID, all nodes with that host ID are removed from the cluster and prevented from joining it again. After making sure that all nodes have unique host IDs, you can use the `node allow-into-cluster` command to un-ban the host ID that was previously duplicated among several nodes.
;; * path : /NODE/ALLOW-INTO-CLUSTER
;;
(defun get-node-allow-into-cluster (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Returns the address of the master CLDB node.
;; description : The `node cldbmaster` API returns the server ID and hostname of the node serving as the CLDB master node.
;; * path : /NODE/CLDBMASTER
;;
(defun get-node-cldbmaster (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Fails over master containers and VIPs to another node.
;; description : When this command runs, all master and intermediate containers are moved off the node and VIPs are re-assigned.
;; * path : /NODE/FAILOVER
;;
(defun get-node-failover (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays a heatmap for the specified nodes.
;; description : 
;; * path : /NODE/HEATMAP
;;
(defun get-node-heatmap (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists nodes in the cluster.
;; description : You can specify a set of nodes for which to retrieve information in several ways:\n\n \n \n* To list only nodes with raised alarms, set `alarmednodes` to 1. \n* To list only NFS nodes, set `nfsnodes` to 1. \n* To window the list, use the `start` and `limit` options to select only a portion of the results. \n* To list nodes that match certain criteria, pass a filter to the `filter` parameter. See the Fields table on the [node](http://maprdocs.mapr.com/home/ReferenceGuide/node.html) page for the fields available to filter. See the [maprcli and REST API Syntax](http://maprdocs.mapr.com/home/ReferenceGuide/maprcli-REST-API-Syntax-Filters.html#concept_znz_qxz_5t) page for information on filters.
;; * path : /NODE/LIST
;;
(defun get-node-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Returns the hostnames of the nodes in the cluster that are running the CLDB service.
;; description : 
;; * path : /NODE/LISTCLDBS
;;
(defun get-node-listcldbs (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Returns the hostnames of the nodes in the cluster that are running the CLDB service and the IP addresses and port numbers for the nodes in the cluster that are running the ZooKeeper service.
;; description : 
;; * path : /NODE/LISTCLDBZKS
;;
(defun get-node-listcldbzks (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Returns the hostnames of the nodes in the cluster that are running the zookeeper service.
;; description : 
;; * path : /NODE/LISTZOOKEEPERS
;;
(defun get-node-listzookeepers (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Places a node into a maintenance mode for a specified timeout duration.
;; description : For the duration of the timeout, the cluster's CLDB does not consider this node's data as lost and does not trigger a resync of the data on this node. See [Managing Nodes](http://maprdocs.mapr.com/home/AdministratorGuide/c-managing-nodes.html) for more information.
;; * path : /NODE/MAINTENANCE
;;
(defun get-node-maintenance (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Moves one or more nodes to a different topology. Permissions required: fc or a .
;; description : 
;; * path : /NODE/MOVE
;;
(defun get-node-move (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Removes one or more server nodes from the system. Permissions required: fc or a .
;; description : After issuing the `node remove` command, wait several minutes to ensure that the node has been properly and completely removed.
;; * path : /NODE/REMOVE
;;
(defun get-node-remove (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Starts, stops, or restarts services on one or more server nodes. Permissions required: ss , fc or a .
;; description : To start or stop services, you must specify the service name, the action (start, stop, or restart), and the nodes on which to perform the action. You can specify the nodes in either of two ways:\n\n \n \n* Use the `nodes` parameter to specify a space-delimited list of node names. \n* Use the `filter` parameter to specify all nodes that match a certain pattern. See [Filters](http://maprdocs.mapr.com/home/ReferenceGuide/maprcli-REST-API-Syntax-Filters.html) for more information.
;; * path : /NODE/SERVICES
;;
(defun get-node-services (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists cluster topology information.
;; description : Lists internal nodes only (switches/racks/etc) and not leaf nodes (server nodes).
;; * path : /NODE/TOPO
;;
(defun get-node-topo (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Returns the resource usage limit for the cluster&#39;s disk resource.
;; description : 
;; * path : /RLIMIT/GET
;;
(defun get-rlimit-get (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Sets the resource usage limit for the cluster&#39;s disk resource.
;; description : 
;; * path : /RLIMIT/SET
;;
(defun get-rlimit-set (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Creates a schedule. Permissions required: fc or a .
;; description : A schedule can be associated with a volume to automate mirror syncing and snapshot creation. See [volume create](http://maprdocs.mapr.com/home/ReferenceGuide/volume-create.html) and [volume modify](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html).
;; * path : /SCHEDULE/CREATE
;;
(defun get-schedule-create (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists the schedules on the cluster.
;; description : 
;; * path : /SCHEDULE/LIST
;;
(defun get-schedule-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Modifies an existing schedule, specified by ID. Permissions required: fc or a .
;; description : To find a schedule's ID:\n\n \n \n1. Use the [schedule list](http://maprdocs.mapr.com/home/ReferenceGuide/schedule-list.html) command to list the schedules. \n1. Select the schedule to modify. \n1. Pass the selected schedule's ID in the -id parameter to the `schedule modify` command.
;; * path : /SCHEDULE/MODIFY
;;
(defun get-schedule-modify (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Removes a schedule.
;; description : A schedule can only be removed if it is not associated with any volumes. See [volume modify](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html).
;; * path : /SCHEDULE/REMOVE
;;
(defun get-schedule-remove (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists all services on the specified node, the memory allocated for each service, the state of each service, and log path for each service.
;; description : 
;; * path : /SERVICE/LIST
;;
(defun get-service-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Sets the log level on the CLDB service. Permissions required: fc or a .
;; description : 
;; * path : /SETLOGLEVEL/CLDB
;;
(defun get-setloglevel-cldb (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Sets the log level on the FileServer service. Permissions required: fc or a .
;; description : 
;; * path : /SETLOGLEVEL/FILESERVER
;;
(defun get-setloglevel-fileserver (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Sets the log level on the HBase Master service. Permissions required: fc or a .
;; description : 
;; * path : /SETLOGLEVEL/HBMASTER
;;
(defun get-setloglevel-hbmaster (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Sets the log level on the HBase RegionServer service. Permissions required: fc or a .
;; description : 
;; * path : /SETLOGLEVEL/HBREGIONSERVER
;;
(defun get-setloglevel-hbregionserver (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Sets the log level on the JobTracker service. Permissions required: fc or a .
;; description : 
;; * path : /SETLOGLEVEL/JOBTRACKER
;;
(defun get-setloglevel-jobtracker (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Sets the log level on the NFS service. Permissions required: fc or a .
;; description : 
;; * path : /SETLOGLEVEL/NFS
;;
(defun get-setloglevel-nfs (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Sets the log level on the TaskTracker service. Permissions required: fc or a .
;; description : 
;; * path : /SETLOGLEVEL/TASKTRACKER
;;
(defun get-setloglevel-tasktracker (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : For the given stream, lists consumers and the topics and partitions that the consumers are reading messages from.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm`, `consumeperm`, `produceperm`, or `topicperm` permission on the stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/ASSIGN/LIST
;;
(defun get-stream-assign-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Creates a new stream.
;; description : After you create a stream, you can edit the values of its parameters with the command `maprcli stream edit`.\n\nTo see the value of a stream's parameters, use the command `maprcli stream info`.\n\n \n\nTo run this command, your user ID must have write permission on the directory in which you want to create a stream.\n\n \n\n \n\n\n\n## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/CREATE
;;
(defun get-stream-create (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Deletes committed cursors that are in the partitions in a stream.
;; description : Note: Deleting the committed cursors for active consumers has no effect on the consumers. Consumers use read cursors to keep track of where they currently are in partitions. \n\nFor example, the consumer `consumer1` continues reading the messages in a partition from the position of the consumer's read cursor even after the consumer's committed cursor is deleted. However, if `consumer1` goes offline and the partition is reassigned to another consumer (`consumer2`) in the same consumer group before `consumer1` creates another committed cursor, `consumer2` starts reading the partition at the most recent message.\n\n \n\n \n\n \n\n\n\n## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm` or `consumeperm` permission on the stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/CURSOR/DELETE
;;
(defun get-stream-cursor-delete (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists the cursors for the consumers of a stream.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm`, `consumeperm`, `produceperm`, or `topicperm` permission on the stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/CURSOR/LIST
;;
(defun get-stream-cursor-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Deletes the specified stream. Deleted streams cannot be recovered unless they were previously replicated.
;; description : Producers are no longer able to publish messages to topics in the stream, and consumers are no longer able to read messages from topics in the stream.\n\n \n\n\n\n## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/DELETE
;;
(defun get-stream-delete (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Edits the values of parameters for the specified stream.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm` permission on the stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/EDIT
;;
(defun get-stream-edit (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays the values of the parameters of the specified stream.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n*   **`adminperm`**<br/> When a user with this permission runs the command, the output includes the access-control expressions for the `adminperm` and `topicperm` permissions.<br/> **`produceperm`, `consumeperm`, or `topicperm`**<br/> When a user with one of these permissions runs the command, the output does not include any access-control expressions.<br/>   \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/INFO
;;
(defun get-stream-info (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Runs the purge process, removing messages that are marked for deletion and reclaiming disk space.
;; description : For information about the purge process, see [Setting the Time-to-Live for Messages](http://maprdocs.mapr.com/home/MapR_Streams/time_to_live_for_messages.html#time_to_live_for_messages__title).\n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.\n\n \n\n \n\n\n\n## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm` permission on the stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/PURGE
;;
(defun get-stream-purge (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Registers an existing stream as a replica of the specified stream.
;; description : ## Permissions Required at the Source Cluster\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm` and `copyperm` permissions on the source stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.\n\n \n\n \n\n\n\n## Permissions Required at the Target Cluster\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path
;; * path : /STREAM/REPLICA/ADD
;;
(defun get-stream-replica-add (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Sets up and starts replication between a source stream and replica stream.
;; description : The `maprcli stream replica autosetup` command performs the following steps to set up replication:\n \n1. Creates a stream in the destination cluster. \n1. Declares the new stream to be a replica of the source stream and ensures that replication does not begin immediately after the next step. \n1. Declares the source stream as the original of the replica stream. \n1. Runs the `mapr copystream` utility to load a copy of the source data into the replica. \n1. Clears the paused replication state to start replication. \n\n \n\n \n\n \n\n\n\n## Permissions Required at the Source Cluster\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm` and `copyperm` permissions on the source stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.\n\n \n\n \n\n\n\n## Permissions Required at the Target Cluster\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path
;; * path : /STREAM/REPLICA/AUTOSETUP
;;
(defun get-stream-replica-autosetup (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Modifies the way in which messages are replicated from one stream to another.
;; description : ## Permissions Required at the Source Cluster\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm` permission on the source stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.\n\n \n\n \n\n\n\n## Permissions Required at the Target Cluster\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path
;; * path : /STREAM/REPLICA/EDIT
;;
(defun get-stream-replica-edit (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists the replicas of a given stream.
;; description : ## Permissions Required on the Source Cluster\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm` permission on the source stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/REPLICA/LIST
;;
(defun get-stream-replica-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Pauses replication from a source stream to a replica stream.
;; description : ## Permissions Required on the Source Cluster\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm` permission on the source stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/REPLICA/PAUSE
;;
(defun get-stream-replica-pause (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Unregisters a stream as the replica of another stream.
;; description : ## Permissions Required on the Source Cluster\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm` permission on the source stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/REPLICA/REMOVE
;;
(defun get-stream-replica-remove (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Resumes replication from one stream to another stream.
;; description : ## Permissions Required on the Source Cluster\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm` permission on the source stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/REPLICA/RESUME
;;
(defun get-stream-replica-resume (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Registers a stream as an upstream source for a given stream. For example, if you wanted to replicate messages from Stream_A to Stream_B , Stream_A would be the upstream source for Stream_B .
;; description : ## Permissions Required on the Target Cluster\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm` permission on the source stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/UPSTREAM/ADD
;;
(defun get-stream-upstream-add (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists all of the streams that are replicating to a given stream.
;; description : ## Permissions Required on the Target Cluster\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm` permission on the source stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/UPSTREAM/LIST
;;
(defun get-stream-upstream-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Unregisters a stream as an upstream source for a given stream.
;; description : ## Permissions Required on the Target Cluster\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm` permission on the source stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/UPSTREAM/REMOVE
;;
(defun get-stream-upstream-remove (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Creates a topic in the specified stream.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `topicperm` permission on the stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/TOPIC/CREATE
;;
(defun get-stream-topic-create (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Deletes the specified topic from the specified stream.
;; description : Consumers do not have to stop consuming from a topic before the topic is deleted.\n\nThe deletion of the topic and the messages is immediate. However, the command also starts a background process for the purging the topic and messages to reclaim disk space. \n\n \n\nIf the parameter `-autocreate` for the stream is set to `true`, a topic with the same name is created if a producer writes a message to a topic of the same name. For example, if you delete the topic `Topic_A` and then a producer writes a message to the topic `Topic_A`, MapR Streams creates a topic that is named `Topic_A`. Aside from the name, the new topic `Topic_A` shares nothing with the deleted topic `Topic_A`.\n\n \n\n \n\n\n\n## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `topicperm` permission on the stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/TOPIC/DELETE
;;
(defun get-stream-topic-delete (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Allows you to increase the number of partitions that are in the specified topic.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `topicperm` permission on the stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/TOPIC/EDIT
;;
(defun get-stream-topic-edit (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists information about the partitions in the topics that are in a stream.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm`, `consumeperm`, `produceperm`, or `topicperm` permission on the stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/TOPIC/INFO
;;
(defun get-stream-topic-info (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists the topics that are in a stream, as well as the number of partitions in each topic.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminperm`, `consumeperm`, `produceperm`, or `topicperm` permission on the stream \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR Streams does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /STREAM/TOPIC/LIST
;;
(defun get-stream-topic-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Creates a new MapR-DB binary or JSON table.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/CREATE
;;
(defun get-table-create (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists the Access Control Expressions (ACEs) for a specified column.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminaccessperm` on the table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/CF/COLPERM/GET
;;
(defun get-table-cf-colperm-get (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Sets Access Control Expressions (ACEs) for a specified column.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminaccessperm` on the table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/CF/COLPERM/SET
;;
(defun get-table-cf-colperm-set (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Deletes the Access Control Expressions (ACEs) for a specified column. Deletion cannot be undone.
;; description : Note: When a user, group, or role requests to read data from, write data to, or append data to a column, MapR-DB checks whether that user, group, or role has read or write permission for the column family AND read or write permission for the column. For example, suppose user `i_montoya` tries to write data to columns `col1` and `col2` in column family `cf1`. MapR-DB checks whether `i_montoya` has write permission on `cf1` AND `col1` AND `col2`. If `i_montoya` does not have all three permissions, MapR-DB returns an error that says access for the write is denied.\n\nIf this user were to try to read from the same two columns, MapR-DB would simply not return the data. If the user tried to read from those two columns and additional columns on which he had read permissions, the results would contain the data for those additional columns but exclude the data for `col1` and `col2`.\n\n \n\n \n\n \n\n\n\n## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminaccessperm` on the table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/CF/COLPERM/DELETE
;;
(defun get-table-cf-colperm-delete (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Creates a column family for a MapR binary or JSON table.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `createrenamefamilyperm` on the table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/CF/CREATE
;;
(defun get-table-cf-create (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Deletes a column family from a MapR-DB binary table or JSON table . Deletion cannot be undone.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `deletefamilyperm` on the table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/CF/DELETE
;;
(defun get-table-cf-delete (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Edits a column family in a binary table or JSON table .
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `createrenamefamilyperm` on the table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/CF/EDIT
;;
(defun get-table-cf-edit (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists a MapR table&#39;s column families.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminaccessperm` on the table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/CF/LIST
;;
(defun get-table-cf-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Deletes a MapR-DB binary or JSON table .
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminaccessperm` on the table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/DELETE
;;
(defun get-table-delete (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Edits the attributes of a MapR-DB binary or JSON table .
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminaccessperm` on the table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/EDIT
;;
(defun get-table-edit (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays information about a MapR-DB binary or JSON table .
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `adminaccessperm` on the table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/INFO
;;
(defun get-table-info (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists the regions that make up a specified table.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/REGION/LIST
;;
(defun get-table-region-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Merges regions of a table together to reduce the number of regions that a table occupies.
;; description : This command merges the region that you specify with the region that contains the row keys that immediately follow the row keys of the specified region.\n\n \n\nNote: Consider the table configuration when you decide to merge regions because it is possible that MapR-DB might immediately split the regions after they are merged. If `autosplit` is set to true, MapR-DB splits a region when the size of the region exceeds 150% of the average value (`regionsizemb`). For example, if the average value is 4096 MB, MapR-DB splits a region that is larger than 6144 MB. \n\n \n\n \n\n\n\n## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `splitmergeperm` permission on the table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/REGION/MERGE
;;
(defun get-table-region-merge (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Manually triggers the packing of regions.
;; description : MapR-DB automatically packs regions; however, you can use this command to reclaim space that is consumed by expired rows or to avoid read amplification.\n\n \n\n \n\n\n\n## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `packperm` permission on the table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/REGION/PACK
;;
(defun get-table-region-pack (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Splits a region in a table.
;; description : ## Permissions Required\n\n To run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on the volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the path \n* `splitmergeperm` permission on the table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/REGION/SPLIT
;;
(defun get-table-region-split (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Registers a table as a replica of another MapR-DB binary or JSON table.
;; description : Note: You do not need to use this command it you use the `table replica autosetup` command. \n\n \n\n \n\n\n\n## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* `readAce` and `writeAce` on both the source volume and the target volume \n* `lookupdir` on directories in the paths of both tables  \n* `readperm` and `replperm` permissions on the source table \n\n \n\nNote: The **mapr user** is not treated as a superuser. MapR-DB does not allow the **mapr user** to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/REPLICA/ADD
;;
(defun get-table-replica-add (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Sets up and starts replication between a source MapR-DB binary or JSON table to a replica MapR-DB binary or JSON table.
;; description : The `maprcli table replica autosetup` command performs the following steps to set up replication:\n\n \n \n1. Creates a table with the required column families in the destination cluster. \n1. Declares the new table to be a replica of the source table and ensures that replication does not begin immediately after the next step. \n1. Declares the source table as an upstream source for the replica. \n1. Runs the `CopyTable` utility to load a copy of the source data into the replica. \n1. Clears the paused replication state to start the replication stream. \n\n \n\n \n\n\n\n## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on both the source volume and the target volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the paths of both tables \n* `readperm` and `replperm` permissions on the source table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/REPLICA/AUTOSETUP
;;
(defun get-table-replica-autosetup (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Edits the properties of a replica of a MapR-DB binary or JSON table.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* `readAce` and `writeAce` on both the source volume and the target volume \n* `lookupdir` on directories in the paths of both tables  \n* `readperm` and `replperm` permissions on the source table \n\n \n\nNote: The **mapr user** is not treated as a superuser. MapR-DB does not allow the **mapr user** to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/REPLICA/EDIT
;;
(defun get-table-replica-edit (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists replicas and the associated replica statistics for a specified MapR-DB binary or JSON table. By default, replica statistics are updated every five minutes.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* `readAce` on the volume \n* `lookupdir` on directories in the path  \n\n \n\nNote: The **mapr user** is not treated as a superuser. MapR-DB does not allow the **mapr user** to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/REPLICA/LIST
;;
(defun get-table-replica-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Pauses the replication of data from a source MapR-DB binary or JSON table to a replica MapR-DB binary or JSON table.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on both the source volume and the target volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the paths of both tables \n* `replperm` permissions on the source table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/REPLICA/PAUSE
;;
(defun get-table-replica-pause (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Un-registers the specified MapR-DB binary or JSON table as a replica.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on both the source volume and the target volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the paths of both tables \n* `replperm` permissions on the source table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/REPLICA/REMOVE
;;
(defun get-table-replica-remove (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Resumes replication between a source MapR-DB binary or JSON table and a replica of that table when the replication state is set to paused by the maprcli table replica add or the maprcli table replica pause command.
;; description : ## Permissions Required\n\nTo run this command, your user ID must have the following permissions:\n \n* [`readAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) and [`writeAce`](http://maprdocs.mapr.com/home/ReferenceGuide/volume-modify.html#volumemodify) on both the source volume and the target volume \n* [`lookupdir`](http://maprdocs.mapr.com/home/ReferenceGuide/hadoop-mfs.html#hadoopmfs) on directories in the paths of both tables \n* `replperm` permissions on the source table \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/REPLICA/RESUME
;;
(defun get-table-replica-resume (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Maps a MapR-DB source binary table to an Elasticsearch type.
;; description : The type can already exist, as would be the case if custom mapping of MapR-DB data to Elasticsearch-supported data types is configured. If the type doesn't already exist, this command creates it and then loads data from the source table into the type.\n\n \n\nThe final action of this command is to start replication from the source table to the type.\n\n \n\nThe user that runs the command must have the following permissions granted through access control expressions on the source table:\n\n \n \n* Permission to perform column-family and column reads, which is granted with the `readperm` access control expression. \n* Permission to perform replication, which is granted with the `replperm` access control expression. \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/REPLICA/ELASTICSEARCH/AUTOSETUP
;;
(defun get-table-replica-elasticsearch-autosetup (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Edits the mapping of a MapR-DB source binary table to an Elasticsearch type.
;; description : The user that runs the command must have the following permissions granted through access control expressions on the source table:\n\n \n \n* Permission to perform column-family and column reads, which is granted with the `readperm` access control expression. \n* Permission to perform replication, which is granted with the `replperm` access control expression. \n\n \n\nNote: The `mapr` user is not treated as a superuser. MapR-DB does not allow the `mapr` user to run this command unless that user is given the relevant permission or permissions with access-control expressions.
;; * path : /TABLE/REPLICA/ELASTICSEARCH/EDIT
;;
(defun get-table-replica-elasticsearch-edit (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists the Elasticsearch types and the associated replication statistics for a specified binary table.
;; description : By default, statistics are updated every five minutes.
;; * path : /TABLE/REPLICA/ELASTICSEARCH/LIST
;;
(defun get-table-replica-elasticsearch-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Pauses replication to an Elasticsearch type from a MapR-DB source binary table.
;; description : Two reasons that you might want to pause replication are:\n\n \n \n* You want to run [ `maprcli table replica elasticsearch remove` ](http://maprdocs.mapr.com/home/ReferenceGuide/table-replica-elasticsearch-remove.html) to remove the mapping from a source table to a type that is currently receiving replicated updates. \n* You want to compare the data in the type to the data in the source table by using the [ `DiffTables` ](http://maprdocs.mapr.com/home/ReferenceGuide/DiffTables.html) utility. \n\n \n\nTo resume replication to a type, run the  [`maprcli table replica elasticsearch resume`](http://maprdocs.mapr.com/home/ReferenceGuide/table-replica-elasticsearch-resume.html)  command.
;; * path : /TABLE/REPLICA/ELASTICSEARCH/PAUSE
;;
(defun get-table-replica-elasticsearch-pause (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Resumes replication to an Elasticsearch type from a MapR-DB source binary table.
;; description : The result of this command is the opposite of the command [ `maprcli table replica elasticsearch pause` ](http://maprdocs.mapr.com/home/ReferenceGuide/table-replica-elasticsearch-pause.html).
;; * path : /TABLE/REPLICA/ELASTICSEARCH/RESUME
;;
(defun get-table-replica-elasticsearch-resume (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Removes the mapping from a MapR-DB source binary table to an Elasticsearch type.
;; description : Updates from the table will no longer be replicated to the type. The type is not removed from the Elasticsearch cluster in which it is located.
;; * path : /TABLE/REPLICA/ELASTICSEARCH/REMOVE
;;
(defun get-table-replica-elasticsearch-remove (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Adds a binary table as upstream source for a replica.
;; description : Note: You do not need to use this command if you use the `table replica autosetup` command.
;; * path : /TABLE/UPSTREAM/ADD
;;
(defun get-table-upstream-add (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists the binary tables that replicate data to the specified replica binary table.
;; description : 
;; * path : /TABLE/UPSTREAM/LIST
;;
(defun get-table-upstream-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Un-registers a binary table as an upstream source for a replica.
;; description : Note: This step is separate from the `table replica remove` command, which stops replication updates to a replica.
;; * path : /TABLE/UPSTREAM/REMOVE
;;
(defun get-table-upstream-remove (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Ends the specified task attempt as failed.
;; description : 
;; * path : /TASK/FAILATTEMPT
;;
(defun get-task-failattempt (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Kills the specified task attempt.
;; description : 
;; * path : /TASK/KILLATTEMPT
;;
(defun get-task-killattempt (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Retrieves histograms and line charts for task metrics.
;; description : A Hadoop job sets the rules that the JobTracker service uses to break an input data set into discrete tasks and assign those tasks to individual nodes. Use the `task table` to retrieve [task analytics](http://maprdocs.mapr.com/home/AdministratorGuide/JobMetrics-Analyzing.html#Analyzing-Job-Metrics-TheMapRMetricsservic-d3e72) about the jobs running on your cluster. The task metric data includes information about the tasks that make up a specific job, as well as the specific task attempts. The job metric data includes a task attempt's data throughput, measured in number of records per second as well as in bytes per second. The metrics data can be formatted for histogram display or line chart display. In order to issue the `task table` command, the mapr-metrics package must be installed on all the nodes where webserver and jobtracker are configured to run.
;; * path : /TASK/TABLE
;;
(defun get-task-table (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays the status page URL for the specified service.
;; description : 
;; * path : /URLS/{NAME}
;;
(defun get-urls (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Adds a virtual IP address. Permissions required: fc or a .
;; description : 
;; * path : /VIRTUALIP/ADD
;;
(defun get-virtualip-add (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Edits a virtual IP (VIP) range. Permissions required: fc or a .
;; description : 
;; * path : /VIRTUALIP/EDIT
;;
(defun get-virtualip-edit (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists the virtual IP addresses in the cluster.
;; description : 
;; * path : /VIRTUALIP/LIST
;;
(defun get-virtualip-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Reassigns a virtual IP or a range of virtual IP addresses to a specified Media Access Control (MAC) address.
;; description : 
;; * path : /VIRTUALIP/MOVE
;;
(defun get-virtualip-move (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Removes a virtual IP (VIP) or a VIP range. Permissions required: fc or a .
;; description : 
;; * path : /VIRTUALIP/REMOVE
;;
(defun get-virtualip-remove (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Enables or disables auditing on the specified volume.
;; description : You must have the `fc` permission on the cluster to use this command. See [`acl`](http://maprdocs.mapr.com/home/ReferenceGuide/acl.html#acl) for details about this permission.\n\n \n\nTo learn how to determine whether auditing is enabled for a volume, see [Checking Whether Auditing is Enabled for a Directory, File, or MapR-DB Table](http://maprdocs.mapr.com/home/SecurityGuide/CheckingWhetherAuditingisEnabled.html#CheckingWhetherAuditingisEnabledforaDirectoryFileorMapR-DBTable).
;; * path : /VOLUME/AUDIT
;;
(defun get-volume-audit (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Moves a container. Permissions required: fc or m on the volume.
;; description : The volume container move command moves a specified container (`cid`) from a source file server (`fromfileserver`) to a destination file server (`tofileserver`). If the `tofileserver` parameter is not specified, a destination file server is chosen by the CLDB. If the `tofileserver` is specified but does not exist, the command fails with an error. If the `fromfileserver` does not exist or is down, the container move occurs once the source file server comes back up.
;; * path : /VOLUME/CONTAINER/MOVE
;;
(defun get-volume-container-move (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Switches the master replica for a specified container to another replica in the replica chain.
;; description : This command fails if there is only one up-to-date replica for the container.\n\n \n\nNote: Only the root and the MAPR_USER (user name under which MapR services runs) user have permissions to run this command.
;; * path : /VOLUME/CONTAINER/SWITCHMASTER
;;
(defun get-volume-container-switchmaster (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Creates a volume. Permissions required: cv or fc on the volume.
;; description : 
;; * path : /VOLUME/CREATE
;;
(defun get-volume-create (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Corrects the mount path of a volume. Permissions required: fc or m on the volume.
;; description : The CLDB maintains information about the mount path of every volume. If a directory in a volume's path is renamed (by a `hadoop fs` command, for example) the information in the CLDB will be out of date. The `volume fixmountpath` command does a reverse path walk from the volume and corrects the mount path information in the CLDB.
;; * path : /VOLUME/FIXMOUNTPATH
;;
(defun get-volume-fixmountpath (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays information about the specified volume. For best results, use the -json option when running the command.
;; description : 
;; * path : /VOLUME/INFO
;;
(defun get-volume-info (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Creates a link to a volume. Permissions required: fc or m on the volume.
;; description : 
;; * path : /VOLUME/LINK/CREATE
;;
(defun get-volume-link-create (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Removes the specified symbolic link. Permissions required: fc or m on the volume.
;; description : 
;; * path : /VOLUME/LINK/REMOVE
;;
(defun get-volume-link-remove (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Lists information about volumes specified by name, path, or filter.
;; description : See the Fields table on the [volume](http://maprdocs.mapr.com/home/ReferenceGuide/volume.html#volume) page for the fields available to filter. See the [Filters](http://maprdocs.mapr.com/home/ReferenceGuide/maprcli-REST-API-Syntax-Filters.html#concept_znz_qxz_5t) for more information.
;; * path : /VOLUME/LIST
;;
(defun get-volume-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Starts mirroring on the specified volume from its source volume.
;; description : * License required: Enterprise Edition \n* Permissions required: `fc` or `restore` on the volume \n\n \n\n When a mirror is started, the mirror volume is synchronized from a hidden internal snapshot so that the mirroring process is not affected by any concurrent changes to the source volume. The `volume mirror start` command does not wait for mirror completion, but returns immediately. The changes to the mirror volume occur atomically at the end of the mirroring process; deltas transmitted from the source volume do not appear until mirroring is complete.\n\n \n\nTo provide rollback capability for the mirror volume, the mirroring process creates a snapshot of the mirror volume before starting the mirror, with the following naming format: `<volume>.mirrorsnap.<date>.<time>`.\n\n \n\nNormally, the mirroring operation transfers only deltas from the last successful mirror. Under certain conditions (mirroring a volume repaired by `fsck`, for example), the source and mirror volumes can become out of sync. In such cases, it is impossible to transfer deltas, because the state is not the same for both volumes. Use the `-full` option to force the mirroring operation to transfer all data to bring the volumes back in sync.
;; * path : /VOLUME/MIRROR/START
;;
(defun get-volume-mirror-start (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Stops mirroring on the specified volume.
;; description : * License required: Enterprise Edition \n* Permissions required: `fc` or `restore` on the volume \n\n \n\n The `volume mirror stop` command lets you stop mirroring (for example, during a network outage). You can use the `volume mirror start` command to resume mirroring.
;; * path : /VOLUME/MIRROR/STOP
;;
(defun get-volume-mirror-stop (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Modifies an existing volume. Permissions required: m or fc on the volume.
;; description : An error occurs if the name or path refers to a non-existent volume, or cannot be resolved.
;; * path : /VOLUME/MODIFY
;;
(defun get-volume-modify (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Mounts one or more specified volumes. Permissions required: fc or m on the volume.
;; description : 
;; * path : /VOLUME/MOUNT
;;
(defun get-volume-mount (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Moves the specified volume or mirror to a different topology. Permissions required: m or fc on the volume.
;; description : 
;; * path : /VOLUME/MOVE
;;
(defun get-volume-move (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Removes the specified volume or mirror. Permissions required: d or fc on the volume.
;; description : 
;; * path : /VOLUME/REMOVE
;;
(defun get-volume-remove (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Renames the specified volume or mirror. Permissions required: fc or d on the volume.
;; description : 
;; * path : /VOLUME/RENAME
;;
(defun get-volume-rename (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Returns a list of mount points for the specified volume.
;; description : 
;; * path : /VOLUME/SHOWMOUNTS
;;
(defun get-volume-showmounts (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Creates a snapshot of the specified volume, using the specified snapshot name.
;; description : * License required: Enterprise Edition \n* Permissions required: `fc` or `m` on the volume
;; * path : /VOLUME/SNAPSHOT/CREATE
;;
(defun get-volume-snapshot-create (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Displays info about a set of snapshots.
;; description : You can specify the snapshots by volumes or paths, or by specifying a filter to select volumes with certain characteristics.
;; * path : /VOLUME/SNAPSHOT/LIST
;;
(defun get-volume-snapshot-list (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Preserves one or more snapshots from expiration.
;; description : Specify the snapshots by volumes, paths, filter, or IDs.\n\n \n \n* License required: Enterprise Edition \n* Permissions required: `fc `or `m` on the volume
;; * path : /VOLUME/SNAPSHOT/PRESERVE
;;
(defun get-volume-snapshot-preserve (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Removes one or more snapshots.
;; description : * License required: Enterprise Edition \n* Permissions required: `fc` or `m` on the volume
;; * path : /VOLUME/SNAPSHOT/REMOVE
;;
(defun get-volume-snapshot-remove (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Unmounts one or more mounted volumes. Permissions required: fc or m on the volume.
;; description : 
;; * path : /VOLUME/UNMOUNT
;;
(defun get-volume-unmount (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; summary : Upgrades and old-type volume to a new-type volume, which can in turn be used as a promotable mirror volume. Permissions required: m or fc on the volume.
;; description : 
;; * path : /VOLUME/UPGRADEFORMAT
;;
(defun get-volume-upgradeformat (urlpath &key content basic-authorization)
    (multiple-value-bind (stream code header)
      (drakma:http-request urlpath :basic-authorization basic-authorization :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
      (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                  (cl-json:decode-json stream))
          (format t "failed - code : ~a" code))))



;;
;; (convert-json #'function "/path" content-json)
;;
(defun convert-json (query-fun path body)
  (multiple-value-bind (code stream head)
      (funcall query-fun path body)
    (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                (cl-json:decode-json stream))
        (format t "failed - code : ~a" code))))
