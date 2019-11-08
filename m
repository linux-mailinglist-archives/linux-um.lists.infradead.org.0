Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43027F5A01
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 22:35:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vWLCB8oAggJP1nhxIuOObEzgZYtn16BcYvbE/zFmL8w=; b=pK+Eg8h3z+EhYk
	g2pWBPKY3E6JBnsPHdX90weuphOeYJne8jKXOFC/cp8lHnnZz+f/xFNlYfVGNtOKghRpoV7j/Qzph
	ZxaKspTcZTngtvOQamOIfoKTc/7irftiAvcvCiHVicBt+hFaOZ8Ht+HXT+wPs1PbbfnmvLMO0c/TJ
	4rK0rIHhF73xZOg66YSk/z704CcPUDh8pMJOgu8t2cOrS9vJI87q7kvnnQ/d5KDnK/dVoReCMEs+D
	EEUEVrPKKTzzN/LeHddhS5mjGsc0FPI0RVfg/T1s3YIieEcqHzI/lx6z30gAiBfumSObzS5q1FNhk
	NDEBOSvC89nviOlPTDYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTBv9-00010s-GW; Fri, 08 Nov 2019 21:35:55 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTBv5-0000zf-Hz
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 21:35:53 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MXXdn-1iQ6AP0R4R-00YveV; Fri, 08 Nov 2019 22:33:06 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Subject: [PATCH 00/16] drivers: y2038 updates
Date: Fri,  8 Nov 2019 22:32:38 +0100
Message-Id: <20191108213257.3097633-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:cC60oL5qW9T6f3VnEX4IUPUnbZtH58Z5jHTCkfEP3lSVCyJMvvf
 nXa+3lb+MuvX4UyJFUN+jNUJOtYV6vEdBeRluSdOxKcMLTIRW/MA2X5WNg5vjL4h5VMaMqq
 bNkxydHkOOB1gWSeiigewsSsL+Ope/gjBqLstKOktXFNHvIvAI8OyB16Bh3/KHWq5bI5gbP
 ttyknhIOC7MVt+zSJY39Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:C6N/AXULkaM=:Y7JwaiMRl7Ar2O9O2mXFFn
 XNkpKgwWM8P0qO+0Is3DdFORJejcsg4Z7H/JEbKB71PaPIxwYqUaCL54KvYWbGI4UgpeJv2VL
 TDM5JP6XHLZEPg418lMXvJDgfjoG3Hi8z6xcm4eVCYMVOopNmDKLw8sRTvZs5Y9MehLPeuCjA
 FJDznxm+bmmpVwkpxdVxGg/UsFc/GByVXrqgr8aIeNTyU+6QiRoIugryzBDmS8vQIcTfTmtwM
 Xis+iVVThIPm/7TlELGn4QUpWrGuBM87bpEytZmN7iZ2Xv4Pi09GCc0fWAfdVlykCBom4fWhN
 SzMqNyByMJJu1qqSoOmRZIb/A06TGj1hHe1DR8fSuMXOJgyyZG4W2LkZTNTrG0kWBaTiNY4qD
 FOQ5PN5Ds9rUxxJ5jvFQEnBCHs0boCj+R1ogKQHj961SNOjz/iTK9PRAJ2Q/S9lr1OiO0Aill
 9n9w+FUDSA0uaCjboLcZG7ZPwbRrutTP1fW0uPjb2lcWPcBIloby7q+PHrtvR5VMW5jiv1fmf
 hfT7ITXtJL4SPQ1ZG94BaqALxufFNPlW7b2L8+b77UeY7PzZf7Q27rY8HVKNoecjq4sWzCpXp
 sCo16dBMR11yeGV02rWBECYG21JJTtOeHNbls/EWzI9gHEegxzRctljs0BXpmtr3fDrj8dL0R
 TjY2ibzd1SUcPAPXUGKnTI3EjBlBn5NTJbwUJGVyl+zhLeAtQdCVVn9ZET82XUaihtFVsb6l/
 VlZeLSfRYEOZKFWPEnJYv06Nf3Nrd84B+GWSJ7z9QIE1YkNSFvSz0y/FFznyuSImBN+NzxHxs
 7v0SH2wqAYB54MS6c3rahz8Oz2PuxEdQKh0LU5tG8fz8w3hUaZHnsrADS9CMXvPoTccssMd61
 Ly+JSeRt68rTP+cnNhXA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_133551_892203_D3EAD522 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org, jcmvbkbc@gmail.com,
 edumazet@google.com, netdev@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, devel@driverdev.osuosl.org,
 richard@nod.at, kadlec@netfilter.org, cluster-devel@redhat.com,
 ccaulfie@redhat.com, coreteam@netfilter.org, linux+etnaviv@armlinux.org.uk,
 pablo@netfilter.org, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm@vger.kernel.org, jdike@addtoit.com, linux-um@lists.infradead.org,
 etnaviv@lists.freedesktop.org, christian.gmeiner@gmail.com,
 teigland@redhat.com, viro@zeniv.linux.org.uk, tglx@linutronix.de,
 sean@poorly.run, hirofumi@mail.parknet.co.jp, willemb@google.com,
 valdis.kletnieks@vt.edu, rfontana@redhat.com, gregkh@linuxfoundation.org,
 fw@strlen.de, linux-kernel@vger.kernel.org, robdclark@gmail.com,
 stefanr@s5r6.in-berlin.de, netfilter-devel@vger.kernel.org, daniel@ffwll.ch,
 jack@suse.com, linux-fsdevel@vger.kernel.org, freedreno@lists.freedesktop.org,
 davem@davemloft.net, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

These are updates to devidce drivers and file systems that for some
reason or another were not included in the kernel in the previous
y2038 series.

I've gone through all users of time_t again to make sure the
kernel is in a long-term maintainable state.

Posting these as a series for better organization, but each change
here is applicable standalone.

Please merge, review, ack/nack etc as you see fit. My plan is to
include any patches that don't get a reply this time around in
a future pull request, probably for linux-5.6.

As mentioned before, the full series of 90 patches is available at
https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git/log/?h=y2038-endgame

    Arnd

Arnd Bergmann (16):
  staging: exfat: use prandom_u32() for i_generation
  fat: use prandom_u32() for i_generation
  net: sock: use __kernel_old_timespec instead of timespec
  dlm: use SO_SNDTIMEO_NEW instead of SO_SNDTIMEO_OLD
  xtensa: ISS: avoid struct timeval
  um: ubd: use 64-bit time_t where possible
  acct: stop using get_seconds()
  tsacct: add 64-bit btime field
  netfilter: nft_meta: use 64-bit time arithmetic
  packet: clarify timestamp overflow
  quota: avoid time_t in v1_disk_dqblk definition
  hostfs: pass 64-bit timestamps to/from user space
  hfs/hfsplus: use 64-bit inode timestamps
  drm/msm: avoid using 'timespec'
  drm/etnaviv: use ktime_t for timeouts
  firewire: ohci: stop using get_seconds() for BUS_TIME

 arch/um/drivers/cow.h                         |  2 +-
 arch/um/drivers/cow_user.c                    |  7 +++--
 arch/um/drivers/ubd_kern.c                    | 10 +++----
 arch/um/include/shared/os.h                   |  2 +-
 arch/um/os-Linux/file.c                       |  2 +-
 .../platforms/iss/include/platform/simcall.h  |  4 +--
 drivers/firewire/ohci.c                       |  2 +-
 drivers/gpu/drm/etnaviv/etnaviv_drv.c         | 19 ++++++-------
 drivers/gpu/drm/etnaviv/etnaviv_drv.h         | 21 ++++++--------
 drivers/gpu/drm/etnaviv/etnaviv_gem.c         |  5 ++--
 drivers/gpu/drm/etnaviv/etnaviv_gem.h         |  2 +-
 drivers/gpu/drm/etnaviv/etnaviv_gpu.c         |  4 +--
 drivers/gpu/drm/etnaviv/etnaviv_gpu.h         |  4 +--
 drivers/gpu/drm/msm/msm_drv.h                 |  3 +-
 drivers/staging/exfat/exfat_super.c           |  4 +--
 fs/dlm/lowcomms.c                             |  6 ++--
 fs/fat/inode.c                                |  3 +-
 fs/hfs/hfs_fs.h                               | 26 +++++++++++++----
 fs/hfs/inode.c                                |  4 +--
 fs/hfsplus/hfsplus_fs.h                       | 26 +++++++++++++----
 fs/hfsplus/inode.c                            | 12 ++++----
 fs/hostfs/hostfs.h                            | 22 +++++++++------
 fs/hostfs/hostfs_kern.c                       | 15 ++++++----
 fs/quota/quotaio_v1.h                         |  6 ++--
 include/linux/skbuff.h                        |  7 +++--
 include/uapi/linux/acct.h                     |  2 ++
 include/uapi/linux/taskstats.h                |  6 +++-
 kernel/acct.c                                 |  4 ++-
 kernel/tsacct.c                               |  9 ++++--
 net/compat.c                                  |  2 +-
 net/ipv4/tcp.c                                | 28 +++++++++++--------
 net/netfilter/nft_meta.c                      | 10 +++----
 net/packet/af_packet.c                        | 27 +++++++++++-------
 net/socket.c                                  |  2 +-
 34 files changed, 184 insertions(+), 124 deletions(-)

-- 
2.20.0

Cc: jdike@addtoit.com
Cc: richard@nod.at
Cc: jcmvbkbc@gmail.com
Cc: stefanr@s5r6.in-berlin.de
Cc: l.stach@pengutronix.de
Cc: linux+etnaviv@armlinux.org.uk
Cc: christian.gmeiner@gmail.com
Cc: airlied@linux.ie
Cc: daniel@ffwll.ch
Cc: robdclark@gmail.com
Cc: sean@poorly.run
Cc: valdis.kletnieks@vt.edu
Cc: gregkh@linuxfoundation.org
Cc: ccaulfie@redhat.com
Cc: teigland@redhat.com
Cc: hirofumi@mail.parknet.co.jp
Cc: jack@suse.com
Cc: davem@davemloft.net
Cc: edumazet@google.com
Cc: pablo@netfilter.org
Cc: kadlec@netfilter.org
Cc: fw@strlen.de
Cc: willemb@google.com
Cc: viro@zeniv.linux.org.uk
Cc: rfontana@redhat.com
Cc: tglx@linutronix.de
Cc: linux-um@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: linux1394-devel@lists.sourceforge.net
Cc: etnaviv@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org>
Cc: linux-arm-msm@vger.kernel.org>
Cc: freedreno@lists.freedesktop.org>
Cc: devel@driverdev.osuosl.org>
Cc: cluster-devel@redhat.com>
Cc: linux-fsdevel@vger.kernel.org>
Cc: netdev@vger.kernel.org>
Cc: netfilter-devel@vger.kernel.org>
Cc: coreteam@netfilter.org>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
