(ql:quickload "drakma")

(ql:quickload "cl-json")




(defun get-acl-edit-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-acl-set-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-acl-show-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-alarm-clear-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-alarm-clearall-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-alarm-config-load-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-alarm-config-save-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-alarm-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-alarm-names-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-alarm-raise-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-audit-cluster-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-audit-data-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-audit-info-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-cluster-gateway-delete-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-cluster-gateway-get-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-cluster-gateway-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-cluster-gateway-local-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-cluster-gateway-resolve-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-cluster-gateway-set-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-cluster-mapreduce-get-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-cluster-mapreduce-set-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-config-load-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-config-save-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-dashboard-info-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-dialhome-ackdial-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-dialhome-enable-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-dialhome-lastdialed-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-dialhome-metrics-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-dialhome-status-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-disk-add-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-disk-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-disk-listall-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-disk-remove-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-entity-info-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-entity-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-entity-modify-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-entity-remove-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-job-changepriority-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-job-kill-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-job-linklogs-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-job-table-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-license-add-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-license-addcrl-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-license-apps-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-license-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-license-listcrl-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-license-remove-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-license-showid-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-nagios-generate-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-node-allow-into-cluster-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-node-cldbmaster-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-node-failover-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-node-heatmap-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-node-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-node-listcldbs-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-node-listcldbzks-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-node-listzookeepers-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-node-maintenance-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-node-move-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-node-remove-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-node-services-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-node-topo-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-rlimit-get-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-rlimit-set-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-schedule-create-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-schedule-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-schedule-modify-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-schedule-remove-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-service-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-setloglevel-cldb-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-setloglevel-fileserver-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-setloglevel-hbmaster-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-setloglevel-hbregionserver-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-setloglevel-jobtracker-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-setloglevel-nfs-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-setloglevel-tasktracker-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-assign-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-create-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-cursor-delete-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-cursor-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-delete-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-edit-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-info-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-purge-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-replica-add-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-replica-autosetup-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-replica-edit-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-replica-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-replica-pause-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-replica-remove-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-replica-resume-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-upstream-add-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-upstream-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-upstream-remove-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-topic-create-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-topic-delete-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-topic-edit-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-topic-info-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-stream-topic-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-create-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-cf-colperm-get-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-cf-colperm-set-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-cf-colperm-delete-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-cf-create-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-cf-delete-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-cf-edit-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-cf-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-delete-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-edit-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-info-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-region-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-region-merge-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-region-pack-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-region-split-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-replica-add-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-replica-autosetup-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-replica-edit-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-replica-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-replica-pause-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-replica-remove-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-replica-resume-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-replica-elasticsearch-autosetup-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-replica-elasticsearch-edit-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-replica-elasticsearch-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-replica-elasticsearch-pause-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-replica-elasticsearch-resume-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-replica-elasticsearch-remove-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-upstream-add-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-upstream-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-table-upstream-remove-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-task-failattempt-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-task-killattempt-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-task-table-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-urls-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-virtualip-add-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-virtualip-edit-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-virtualip-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-virtualip-move-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-virtualip-remove-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-audit-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-container-move-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-container-switchmaster-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-create-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-fixmountpath-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-info-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-link-create-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-link-remove-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-mirror-start-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-mirror-stop-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-modify-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-mount-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-move-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-remove-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-rename-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-showmounts-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-snapshot-create-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-snapshot-list-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-snapshot-preserve-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-snapshot-remove-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-unmount-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



(defun get-volume-upgradeformat-call (path content)
    (multiple-value-bind (stream code header)
      (drakma:http-request (format nil "~A/~A" "https:///rest" path) :accept "application/json" :content-type "application/json" :content content :want-stream t :method :GET)
        (values code stream header)))



;;
;; (convert-json #'function path content-json)
;;
(defun convert-json (query-fun path body)
  (multiple-value-bind (code stream head)
      (funcall query-fun path body)
    (if (equal code 200) (progn (setf (flexi-streams:flexi-stream-external-format stream) :utf-8)
                                (cl-json:decode-json stream))
        (format t "failed - code : ~a" code))))