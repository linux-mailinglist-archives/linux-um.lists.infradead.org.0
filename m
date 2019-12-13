Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BDC11EC16
	for <lists+linux-um@lfdr.de>; Fri, 13 Dec 2019 21:51:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hPq7/sS7EkvvHAk6xwJ5YCtRXyg1jdw6yUt6eNwchys=; b=BxqNi6HV3exUWH
	lk7ERi4Tyt7I9s3xbnoOvwUnQ7mVx2Kx/T3rL7Dm0j86wQXJFbMmV1sugSGERvmfTObOzi5DcqlTt
	IpWlIlL7f9uLLrK419obCO1SHVRNvroaNBeDWVl5v0Oy0IZQsFs85/UDLh40y2xiId26qOqfLGaQ0
	A+AEgnG/92psXfgzxPA72YTDACS68akF15tfWbv15606FKiPj6JufzuY+VP5XjVI8av3hvtyj/sIA
	p4Bb6tcEYKOMyJzgVojJLL2CRygbtS2rZ8pvXKQbDqe/ttdzBSMJ5Ld7VW/ZInyr4IuCscO/7ZUp4
	8vP7s6wCgN+nAM8krZqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifruf-0000R5-KY; Fri, 13 Dec 2019 20:51:49 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifrub-0000Po-S7
 for linux-um@lists.infradead.org; Fri, 13 Dec 2019 20:51:48 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MvbO4-1hpQC52QtS-00scVY; Fri, 13 Dec 2019 21:50:19 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/24] drivers, fs: y2038 updates
Date: Fri, 13 Dec 2019 21:49:09 +0100
Message-Id: <20191213204936.3643476-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:uP+kiANpOGJCAXUng4IDyXrHx7+oq5wNuUSCR2Raiw5aTIDdJGg
 5j4AA9RZwtRFpSlQJZR8HotU54Xfp+erI4gckXGaucpRhzYx4dcdDnO9RE7chr7C+S6QsS1
 hz8jSvfht0kOIuwI+U39is0hUz6MZ6pZnETpaFRYUgmMegCz9cluYoQw5GzMKND6Vlt+MoP
 vuRLets3Xp1M/VHl6bYkg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kP6IKflIR3w=:FkB32fEkAgwus2sZyvbWHj
 gR1XadNmIQfTKvjDx+NHX537KVRwu9adI8C1WG7Uvu2xqdyhi6NbGnzLLS3erKQVoi1q2bcZJ
 fRUG1d36ibEvFjwqysbPbwC5u4DHiftBkUdZ02IxQaCgRmMake1padTMioHJ5VK44dQCw0Wgi
 l9FfLjhcz0ZpYw+KmnFwnCxdaEQ4rrmqMmI9qQZLKGibtvLox0uwJBt2f1iziiy+EV55optWx
 eHVAl6FcsIhDR1hGIagPTt0pygd3l5tg/E0N5N3r8mcI/qaniqvi6KMSXngpuISEjztZUFIKj
 E4vl7qLyA/xxvBi57YzPutpomt5K21wonhWSM7aFqvVNnIjTmvlIhulMkCwyDac28R/Z4Dp0g
 KMewi00ymEE1euw319FGcrDlXrYDszeK+FvG14u8GD9wvnlwoLF7R9G2nx97kdApqLxfkXQly
 B+hANhQzcIaPqD3Mj4IbgJQGI17ypNCagD8+FwqTZDb0OBqInzQnwij7FBHUOWFHF3Qs/EI7o
 1nrINilaeyXksJoTUhiuzSirhvGWBkbMzW5k02tP0uTz7sxrCz/FxXHDE522PcCDuQTBlyv+I
 QJ9z1iVT5Xg/jxkC7PWxkiiqjSgCEiTCIb6V84/lzwlgwaR4VDO+WH8ZX/gzqVNe9o9vQ3KSE
 8vilfRFPAZi1Or+AvWmTgxeRFkLvobJdMhGGlGJUFAh0XHUkVTF0t8WkeZWhW85ocAbJ5g94z
 t07OthlwQEZNuwc5Z06FKMmP8bFmSpWpMf3TMpq6QCKO+gB6xZa0zdZgyTvgHlhAZckFpPNzt
 SLryaKF3jS+MB5IeJX7dR8/nMWgS5LTwsezZchNIkyBiQLIxvP9ZVqFsGf6QbesMAbCjQWssu
 Ok7QMsSa208ewWk2bxEw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_125146_214123_F749AE36 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 netdev@vger.kernel.org, sparclinux@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, devel@driverdev.osuosl.org,
 darrick.wong@oracle.com, richard@nod.at, cluster-devel@redhat.com,
 ccaulfie@redhat.com, linux+etnaviv@armlinux.org.uk,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 jdike@addtoit.com, linux-um@lists.infradead.org, etnaviv@lists.freedesktop.org,
 christian.gmeiner@gmail.com, teigland@redhat.com, viro@zeniv.linux.org.uk,
 tglx@linutronix.de, sean@poorly.run, trond.myklebust@hammerspace.com,
 hirofumi@mail.parknet.co.jp, linux-nfs@vger.kernel.org,
 valdis.kletnieks@vt.edu, rfontana@redhat.com, gregkh@linuxfoundation.org,
 fw@strlen.de, anna.schumaker@netapp.com, linux-xfs@vger.kernel.org,
 robdclark@gmail.com, stefanr@s5r6.in-berlin.de, daniel@ffwll.ch, jack@suse.com,
 linux-fsdevel@vger.kernel.org, freedreno@lists.freedesktop.org,
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

Please merge, review, ack/nack etc as you see fit. I will
add these to my y2038 branch [1] for linux-next, but can keep
rebasing for feedback and to remove any patches that get
picked up by a maintainer.

Changes since v1 [2]:

- Add Acks I received
- Rebase to v5.5-rc1, droping patches that got merged already
- Add NFS, XFS and the final three patches from another series
- Rewrite etnaviv patches

      Arnd

[1] https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git/log/?h=y2038
[2] https://lore.kernel.org/lkml/20191108213257.3097633-1-arnd@arndb.de/

Arnd Bergmann (24):
  Input: input_event: fix struct padding on sparc64
  fat: use prandom_u32() for i_generation
  dlm: use SO_SNDTIMEO_NEW instead of SO_SNDTIMEO_OLD
  xtensa: ISS: avoid struct timeval
  um: ubd: use 64-bit time_t where possible
  acct: stop using get_seconds()
  tsacct: add 64-bit btime field
  packet: clarify timestamp overflow
  quota: avoid time_t in v1_disk_dqblk definition
  hostfs: pass 64-bit timestamps to/from user space
  hfs/hfsplus: use 64-bit inode timestamps
  drm/msm: avoid using 'timespec'
  drm/etnaviv: reject timeouts with tv_nsec >= NSEC_PER_SEC
  drm/etnaviv: avoid deprecated timespec
  sunrpc: convert to time64_t for expiry
  nfs: use time64_t internally
  nfs: fix timstamp debug prints
  nfs: fscache: use timespec64 in inode auxdata
  xfs: rename compat_time_t to old_time32_t
  xfs: disallow broken ioctls without compat-32-bit-time
  xfs: quota: move to time64_t interfaces
  y2038: remove obsolete jiffies conversion functions
  y2038: rename itimerval to __kernel_old_itimerval
  y2038: sparc: remove use of struct timex

 arch/sparc/kernel/sys_sparc_64.c              | 29 +++++-----
 arch/um/drivers/cow.h                         |  2 +-
 arch/um/drivers/cow_user.c                    |  7 ++-
 arch/um/drivers/ubd_kern.c                    | 10 ++--
 arch/um/include/shared/os.h                   |  2 +-
 arch/um/os-Linux/file.c                       |  2 +-
 .../platforms/iss/include/platform/simcall.h  |  4 +-
 drivers/gpu/drm/etnaviv/etnaviv_drv.c         | 20 ++++---
 drivers/gpu/drm/etnaviv/etnaviv_drv.h         | 11 ++--
 drivers/gpu/drm/etnaviv/etnaviv_gem.c         |  4 +-
 drivers/gpu/drm/etnaviv/etnaviv_gem.h         |  2 +-
 drivers/gpu/drm/etnaviv/etnaviv_gpu.c         |  5 +-
 drivers/gpu/drm/etnaviv/etnaviv_gpu.h         |  5 +-
 drivers/gpu/drm/msm/msm_drv.h                 |  3 +-
 drivers/input/evdev.c                         | 14 ++---
 drivers/input/misc/uinput.c                   | 14 +++--
 fs/dlm/lowcomms.c                             |  6 +-
 fs/fat/inode.c                                |  3 +-
 fs/hfs/hfs_fs.h                               | 28 +++++++--
 fs/hfs/inode.c                                |  4 +-
 fs/hfsplus/hfsplus_fs.h                       | 28 +++++++--
 fs/hfsplus/inode.c                            | 12 ++--
 fs/hostfs/hostfs.h                            | 22 ++++---
 fs/hostfs/hostfs_kern.c                       | 15 +++--
 fs/nfs/fscache-index.c                        |  6 +-
 fs/nfs/fscache.c                              | 18 ++++--
 fs/nfs/fscache.h                              |  8 ++-
 fs/nfs/nfs4xdr.c                              | 10 ++--
 fs/quota/quotaio_v1.h                         |  6 +-
 fs/xfs/xfs_dquot.c                            |  6 +-
 fs/xfs/xfs_ioctl.c                            | 26 +++++++++
 fs/xfs/xfs_ioctl32.c                          |  2 +-
 fs/xfs/xfs_ioctl32.h                          |  2 +-
 fs/xfs/xfs_qm.h                               |  6 +-
 fs/xfs/xfs_quotaops.c                         |  6 +-
 fs/xfs/xfs_trans_dquot.c                      |  8 ++-
 include/linux/jiffies.h                       | 20 -------
 include/linux/sunrpc/cache.h                  | 42 ++++++++------
 include/linux/sunrpc/gss_api.h                |  4 +-
 include/linux/sunrpc/gss_krb5.h               |  2 +-
 include/linux/syscalls.h                      |  9 ++-
 include/uapi/linux/acct.h                     |  2 +
 include/uapi/linux/input.h                    |  1 +
 include/uapi/linux/taskstats.h                |  6 +-
 include/uapi/linux/time_types.h               |  5 ++
 include/uapi/linux/timex.h                    |  2 +
 kernel/acct.c                                 |  4 +-
 kernel/time/itimer.c                          | 18 +++---
 kernel/time/time.c                            | 58 ++-----------------
 kernel/tsacct.c                               |  9 ++-
 net/packet/af_packet.c                        | 27 +++++----
 net/sunrpc/auth_gss/gss_krb5_mech.c           | 12 +++-
 net/sunrpc/auth_gss/gss_krb5_seal.c           |  8 +--
 net/sunrpc/auth_gss/gss_krb5_unseal.c         |  6 +-
 net/sunrpc/auth_gss/gss_krb5_wrap.c           | 16 ++---
 net/sunrpc/auth_gss/gss_mech_switch.c         |  2 +-
 net/sunrpc/auth_gss/svcauth_gss.c             |  6 +-
 net/sunrpc/cache.c                            | 16 ++---
 net/sunrpc/svcauth_unix.c                     | 10 ++--
 59 files changed, 351 insertions(+), 290 deletions(-)

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
Cc: fw@strlen.de
Cc: viro@zeniv.linux.org.uk
Cc: rfontana@redhat.com
Cc: tglx@linutronix.de
Cc: linux-um@lists.infradead.org
Cc: linux1394-devel@lists.sourceforge.net
Cc: etnaviv@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-arm-msm@vger.kernel.org
Cc: freedreno@lists.freedesktop.org
Cc: devel@driverdev.osuosl.org
Cc: cluster-devel@redhat.com
Cc: linux-fsdevel@vger.kernel.org
Cc: netdev@vger.kernel.org
Cc: trond.myklebust@hammerspace.com
Cc: anna.schumaker@netapp.com
Cc: linux-nfs@vger.kernel.org
Cc: linux-xfs@vger.kernel.org
Cc: darrick.wong@oracle.com
Cc: sparclinux@vger.kernel.org

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
