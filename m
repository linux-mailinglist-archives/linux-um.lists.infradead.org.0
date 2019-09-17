Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDAAB4F36
	for <lists+linux-um@lfdr.de>; Tue, 17 Sep 2019 15:30:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TBweN33GXEqg0RAvizDvEvbUJVHQ0+TQ01bww8V46+Y=; b=ttxF+EdmRxIvBZ
	0u6hP1/G4FgD30fHCqaSRftuUjQSqN0orSXMu7lgq2RCIrEvGHpIIACGymwAbYUuAHG1nd+h84PPQ
	KcBt6g29XBO332CrMUs85mkfBdc9SE7vNBLPtUKaYVh6gt1K5ozcqwK+Gyx9Ic2JsL4rqDCrEGZQY
	AkNBeZ/U47gIwGjyU4prtOJPd8GLBa5260WUDBH+OdmW0dO91rnh4ANLGxrD9cO6uG7G5BgO4mE+9
	Seuetvi93dvu9acqRrI3xy+/FHO9OhxtpXilsBJFIGRD471b6DhzrAKIszQ4K7KTE5cdK+N3m2FH/
	6sRKyfCyb4rfZlpwjdMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADYz-0003DZ-JA; Tue, 17 Sep 2019 13:30:37 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADYv-0003CY-FQ
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 13:30:36 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1iADYr-0005GC-MV
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 15:30:29 +0200
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Subject: [RFC v3 0/2] um: synchronized time-travel
Date: Tue, 17 Sep 2019 15:29:42 +0200
Message-Id: <20190917132943.20102-1-johannes@sipsolutions.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_063033_512338_9DA51AA3 
X-CRM114-Status: UNSURE (   4.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

This seems to work now. On top of qemu, I have the following patches:
https://lore.kernel.org/qemu-devel/20190903192505.10686-1-johannes@sipsolutions.net/
https://lore.kernel.org/qemu-devel/20190827124909.16824-1-johannes@sipsolutions.net/
https://lore.kernel.org/qemu-devel/20190917122512.15320-1-johannes@sipsolutions.net/
https://lore.kernel.org/qemu-devel/20190917122559.15555-1-johannes@sipsolutions.net/
https://lore.kernel.org/qemu-devel/20190917122625.15614-1-johannes@sipsolutions.net/
https://lore.kernel.org/qemu-devel/20190917122625.15614-2-johannes@sipsolutions.net/
https://lore.kernel.org/qemu-devel/20190917122644.15736-1-johannes@sipsolutions.net/

And 'make vhost-user-sim' builds a program there that speaks the UML
simulation time protocol and implements a virtual ethernet network.

With all the patches I sent to UML, I have a start script like this:

-------------
#!/bin/sh

~/hwsim/qemu/vhost-user-sim -s /tmp/clock -n /tmp/net 2>&1 | tee /tmp/sim.log &
(sleep 0.5 ; /path/to/linux mem=128M init=$(pwd)/test.sh root=none \
                            hostfs=/ rootfstype=hostfs rootflags=/ \
                            time-travel=ext:/tmp/clock \
                            virtio_uml.device=/tmp/net:1 >/tmp/log1) &
(sleep 1.5 ; /path/to/linux mem=128M init=$(pwd)/test2.sh root=none \
                            hostfs=/ rootfstype=hostfs rootflags=/ \
                            time-travel=ext:/tmp/clock \
                            virtio_uml.device=/tmp/net:1 >/tmp/log1) &
wait
wait
wait
-------------


where test.sh contains
-------------
#!/bin/bash

start=$(date +%s)
ip link set eth0 up
ip addr add 10.0.0.1/24 dev eth0
ping -D -n -i 10 -c 61 10.0.0.2
end=$(date +%s)
duration=$(($end - $start))
min=$(($duration / 60))
sec=$(($duration % 60))
echo "================= runtime observed inside VM ${min}m ${sec}s ================="
poweroff -f
-------------

and test2.sh contains
-------------
#!/bin/sh

ip link set eth0 up
ip addr add 10.0.0.2/24 dev eth0
tcpdump -n -e -i eth0 &
sleep 660
poweroff -f
-------------

This then results in a network of two machines where one pings the other,
and the virtual network currently implements exactly 50ms delay.


There are some bugs in the userspace side, it doesn't handle nested requests
correctly and can lock up, that's why I have the different sleeps in there.
However, I'll need to pivot a bit and write integration to the simulation
that I really need this to work with, so I still wanted to get this out. I
may not fix those userspace bugs, but it's still a sample program for this.

johannes





_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
