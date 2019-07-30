Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7940E7B3FE
	for <lists+linux-um@lfdr.de>; Tue, 30 Jul 2019 22:04:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iB3oQoyLN81VCxlXscFKGVTTAjsxVbjaaIbGno7Olnc=; b=AR/+3RXK0bWcoX
	tbakmlGc0RKlqnjUWjkI4q7yCrXmcuifpjPRYST6l9sJisT+IyPgi0jVMgx2RrpEWPrc8eykqdKGa
	Y2hVN8ssunWsAXjaCgx/gsWrfdSHeUUoDBvMDUZXBfTTrOBZuDXAw/bLm1rPoJVQ4HHFdb7vT3i5h
	FradSZ0c3C03uz9IPQBndId3eh91/YHMNi2g4giYIB4uuzFxtuRzkc0WOfivliNC1MZo1xVredaz7
	glX5UIxa1yXObXjZ9ZTVHvOztyvwJ4wZJJe9K3284z3xoLUUu34ZBI0ZhF5cwoAn2GptBl5p4nZji
	WeeMhn3co2s23vuEgkIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsYM2-0007tl-O2; Tue, 30 Jul 2019 20:04:14 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsYLy-0007sF-RY
 for linux-um@lists.infradead.org; Tue, 30 Jul 2019 20:04:12 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MkHEN-1icrZu462r-00khlH; Tue, 30 Jul 2019 22:02:40 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Alexander Viro <viro@zeniv.linux.org.uk>
Subject: [PATCH v5 22/29] compat_ioctl: remove translation for sound ioctls
Date: Tue, 30 Jul 2019 22:01:27 +0200
Message-Id: <20190730200145.1081541-3-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190730200145.1081541-1-arnd@arndb.de>
References: <20190730192552.4014288-1-arnd@arndb.de>
 <20190730200145.1081541-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:aXuX/8NsPMKeoKYlMNR2z5RGjKSqpECweZBiZM22EkHNIB+YNJK
 roZEQcRNgJFeE3COiMXAG752jJ7Pwegcj3a7bNuW9t0iID15W4PMdy5aOFboGkTUFwVOdJQ
 Il/pk0cihQRrOYDfnQBRLIDw8tu0syZ6MhHaFXgI2jQEAPc6Kcs3pEKVG6gGepFanMSFDe3
 2efnh7Np0LQTMNOU6T2fA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UwsMkfuEPjA=:HR5uCP3YcqZMWFruxX6YKi
 +I/1bNNN41LFMB5/SJOdzqhwU++iMD2dtgolrbhebpUDccoMGEnt2RzxbS5EMBZAzAEqio8cl
 Dkme+UOM0lqDYXk6w7f9dNpUnb9y8hF+13x5kwcOk67aYKYK540wWUU/cBlCFRRNxkFf2/jCv
 rLeQ/My+2vo47X0XswCHFhuTdsubEt/yAXvczvMOju6HgdVldmBWega5iz7riv3l9tBvOSxRp
 izyXWrN1fVAtwyU57Dl2ZK2wm52NYxrpKiWt39SqPnpvcx6pyQJS7UhGiZmWMgabTjGkbx17f
 /+DGDI09Fs2Vo5CjoagE9xl88huB2o/+W7WKgptZ24L3npd49KSnaGpk4LPi7Qa2X7MxX1XFO
 EiEebqL9s7SRWGyY2FJoPqSyqHDWSmtoRD32pcfPwHsXyujraQls5iWZU5FJgam3/s2tFFuik
 w/dVa+vLCc59mGVv0i/E4+MvLzwnJcLGxEE6uwgc0ceOzTi0+NUO5oBUoaqZyU67d+18/IR36
 1bn384YqdWGPzppPeL28uWd5Cptr8ZB8mcVGaQs/2/Q8A3HJtRJsm7nyYHkvhLeYy2BTzsTHb
 kHMlUi0pNK6RmoLoazKLEfGF/TiRt67SN54CtSb43riZUxiBbZ6RqJslUdpGcH1nWT5kIEQXR
 bTigYzwsKQwA96EndRMl0UzR4SEEGKIVUr+sLc+r8gEtfVaL8lMTIc3NRDp9wfZ4JvOnWUwH+
 Kr8tS9gDlLKDiMCfPxcRPlo+dqMzMhtR+zOOcA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_130411_191819_B79BD0DE 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: alsa-devel@alsa-project.org, Arnd Bergmann <arnd@arndb.de>,
 Takashi Iwai <tiwai@suse.de>, Richard Weinberger <richard@nod.at>,
 Jeff Dike <jdike@addtoit.com>, Takashi Iwai <tiwai@suse.com>,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jaroslav Kysela <perex@perex.cz>, linux-fsdevel@vger.kernel.org,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

The SNDCTL_* and SOUND_* commands are the old OSS user interface.

I checked all the sound ioctl commands listed in fs/compat_ioctl.c
to see if we still need the translation handlers. Here is what I
found:

- sound/oss/ is (almost) gone from the kernel, this is what actually
  needed all the translations
- The ALSA emulation for OSS correctly handles all compat_ioctl
  commands already.
- sound/oss/dmasound/ is the last holdout of the original OSS code,
  this is only used on arch/m68k, which has no 64-bit mode and
  hence needs no compat handlers
- arch/um/drivers/hostaudio_kern.c may run in 64-bit mode with
  32-bit x86 user space underneath it. This rare corner case is
  the only one that still needs the compat handlers.

By adding a simple redirect of .compat_ioctl to .unlocked_ioctl in the
UML driver, we can remove all the COMPATIBLE_IOCTL() annotations without
a change in functionality. For completeness, I'm adding the same thing
to the dmasound file, knowing that it makes no difference.

The compat_ioctl list contains one comment about SNDCTL_DSP_MAPINBUF and
SNDCTL_DSP_MAPOUTBUF, which actually would need a translation handler
if implemented. However, the native implementation just returns -EINVAL,
so we don't care.

Reviewed-by: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/um/drivers/hostaudio_kern.c   |   1 +
 fs/compat_ioctl.c                  | 158 -----------------------------
 sound/core/oss/pcm_oss.c           |   4 +
 sound/oss/dmasound/dmasound_core.c |   2 +
 4 files changed, 7 insertions(+), 158 deletions(-)

diff --git a/arch/um/drivers/hostaudio_kern.c b/arch/um/drivers/hostaudio_kern.c
index 7f9dbdbc4eb7..1bf139c3727a 100644
--- a/arch/um/drivers/hostaudio_kern.c
+++ b/arch/um/drivers/hostaudio_kern.c
@@ -298,6 +298,7 @@ static const struct file_operations hostaudio_fops = {
 	.write          = hostaudio_write,
 	.poll           = hostaudio_poll,
 	.unlocked_ioctl	= hostaudio_ioctl,
+	.compat_ioctl	= compat_ptr_ioctl,
 	.mmap           = NULL,
 	.open           = hostaudio_open,
 	.release        = hostaudio_release,
diff --git a/fs/compat_ioctl.c b/fs/compat_ioctl.c
index 03da7934a351..33f732979f45 100644
--- a/fs/compat_ioctl.c
+++ b/fs/compat_ioctl.c
@@ -51,8 +51,6 @@
 #include <linux/uaccess.h>
 #include <linux/watchdog.h>
 
-#include <linux/soundcard.h>
-
 #include <linux/hiddev.h>
 
 
@@ -458,162 +456,6 @@ COMPATIBLE_IOCTL(PPPIOCDISCONN)
 COMPATIBLE_IOCTL(PPPIOCATTCHAN)
 COMPATIBLE_IOCTL(PPPIOCGCHAN)
 COMPATIBLE_IOCTL(PPPIOCGL2TPSTATS)
-/* Big A */
-/* sparc only */
-/* Big Q for sound/OSS */
-COMPATIBLE_IOCTL(SNDCTL_SEQ_RESET)
-COMPATIBLE_IOCTL(SNDCTL_SEQ_SYNC)
-COMPATIBLE_IOCTL(SNDCTL_SYNTH_INFO)
-COMPATIBLE_IOCTL(SNDCTL_SEQ_CTRLRATE)
-COMPATIBLE_IOCTL(SNDCTL_SEQ_GETOUTCOUNT)
-COMPATIBLE_IOCTL(SNDCTL_SEQ_GETINCOUNT)
-COMPATIBLE_IOCTL(SNDCTL_SEQ_PERCMODE)
-COMPATIBLE_IOCTL(SNDCTL_FM_LOAD_INSTR)
-COMPATIBLE_IOCTL(SNDCTL_SEQ_TESTMIDI)
-COMPATIBLE_IOCTL(SNDCTL_SEQ_RESETSAMPLES)
-COMPATIBLE_IOCTL(SNDCTL_SEQ_NRSYNTHS)
-COMPATIBLE_IOCTL(SNDCTL_SEQ_NRMIDIS)
-COMPATIBLE_IOCTL(SNDCTL_MIDI_INFO)
-COMPATIBLE_IOCTL(SNDCTL_SEQ_THRESHOLD)
-COMPATIBLE_IOCTL(SNDCTL_SYNTH_MEMAVL)
-COMPATIBLE_IOCTL(SNDCTL_FM_4OP_ENABLE)
-COMPATIBLE_IOCTL(SNDCTL_SEQ_PANIC)
-COMPATIBLE_IOCTL(SNDCTL_SEQ_OUTOFBAND)
-COMPATIBLE_IOCTL(SNDCTL_SEQ_GETTIME)
-COMPATIBLE_IOCTL(SNDCTL_SYNTH_ID)
-COMPATIBLE_IOCTL(SNDCTL_SYNTH_CONTROL)
-COMPATIBLE_IOCTL(SNDCTL_SYNTH_REMOVESAMPLE)
-/* Big T for sound/OSS */
-COMPATIBLE_IOCTL(SNDCTL_TMR_TIMEBASE)
-COMPATIBLE_IOCTL(SNDCTL_TMR_START)
-COMPATIBLE_IOCTL(SNDCTL_TMR_STOP)
-COMPATIBLE_IOCTL(SNDCTL_TMR_CONTINUE)
-COMPATIBLE_IOCTL(SNDCTL_TMR_TEMPO)
-COMPATIBLE_IOCTL(SNDCTL_TMR_SOURCE)
-COMPATIBLE_IOCTL(SNDCTL_TMR_METRONOME)
-COMPATIBLE_IOCTL(SNDCTL_TMR_SELECT)
-/* Little m for sound/OSS */
-COMPATIBLE_IOCTL(SNDCTL_MIDI_PRETIME)
-COMPATIBLE_IOCTL(SNDCTL_MIDI_MPUMODE)
-COMPATIBLE_IOCTL(SNDCTL_MIDI_MPUCMD)
-/* Big P for sound/OSS */
-COMPATIBLE_IOCTL(SNDCTL_DSP_RESET)
-COMPATIBLE_IOCTL(SNDCTL_DSP_SYNC)
-COMPATIBLE_IOCTL(SNDCTL_DSP_SPEED)
-COMPATIBLE_IOCTL(SNDCTL_DSP_STEREO)
-COMPATIBLE_IOCTL(SNDCTL_DSP_GETBLKSIZE)
-COMPATIBLE_IOCTL(SNDCTL_DSP_CHANNELS)
-COMPATIBLE_IOCTL(SOUND_PCM_WRITE_FILTER)
-COMPATIBLE_IOCTL(SNDCTL_DSP_POST)
-COMPATIBLE_IOCTL(SNDCTL_DSP_SUBDIVIDE)
-COMPATIBLE_IOCTL(SNDCTL_DSP_SETFRAGMENT)
-COMPATIBLE_IOCTL(SNDCTL_DSP_GETFMTS)
-COMPATIBLE_IOCTL(SNDCTL_DSP_SETFMT)
-COMPATIBLE_IOCTL(SNDCTL_DSP_GETOSPACE)
-COMPATIBLE_IOCTL(SNDCTL_DSP_GETISPACE)
-COMPATIBLE_IOCTL(SNDCTL_DSP_NONBLOCK)
-COMPATIBLE_IOCTL(SNDCTL_DSP_GETCAPS)
-COMPATIBLE_IOCTL(SNDCTL_DSP_GETTRIGGER)
-COMPATIBLE_IOCTL(SNDCTL_DSP_SETTRIGGER)
-COMPATIBLE_IOCTL(SNDCTL_DSP_GETIPTR)
-COMPATIBLE_IOCTL(SNDCTL_DSP_GETOPTR)
-/* SNDCTL_DSP_MAPINBUF,  XXX needs translation */
-/* SNDCTL_DSP_MAPOUTBUF,  XXX needs translation */
-COMPATIBLE_IOCTL(SNDCTL_DSP_SETSYNCRO)
-COMPATIBLE_IOCTL(SNDCTL_DSP_SETDUPLEX)
-COMPATIBLE_IOCTL(SNDCTL_DSP_GETODELAY)
-COMPATIBLE_IOCTL(SNDCTL_DSP_PROFILE)
-COMPATIBLE_IOCTL(SOUND_PCM_READ_RATE)
-COMPATIBLE_IOCTL(SOUND_PCM_READ_CHANNELS)
-COMPATIBLE_IOCTL(SOUND_PCM_READ_BITS)
-COMPATIBLE_IOCTL(SOUND_PCM_READ_FILTER)
-/* Big C for sound/OSS */
-COMPATIBLE_IOCTL(SNDCTL_COPR_RESET)
-COMPATIBLE_IOCTL(SNDCTL_COPR_LOAD)
-COMPATIBLE_IOCTL(SNDCTL_COPR_RDATA)
-COMPATIBLE_IOCTL(SNDCTL_COPR_RCODE)
-COMPATIBLE_IOCTL(SNDCTL_COPR_WDATA)
-COMPATIBLE_IOCTL(SNDCTL_COPR_WCODE)
-COMPATIBLE_IOCTL(SNDCTL_COPR_RUN)
-COMPATIBLE_IOCTL(SNDCTL_COPR_HALT)
-COMPATIBLE_IOCTL(SNDCTL_COPR_SENDMSG)
-COMPATIBLE_IOCTL(SNDCTL_COPR_RCVMSG)
-/* Big M for sound/OSS */
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_VOLUME)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_BASS)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_TREBLE)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_SYNTH)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_PCM)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_SPEAKER)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_LINE)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_MIC)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_CD)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_IMIX)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_ALTPCM)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_RECLEV)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_IGAIN)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_OGAIN)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_LINE1)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_LINE2)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_LINE3)
-COMPATIBLE_IOCTL(MIXER_READ(SOUND_MIXER_DIGITAL1))
-COMPATIBLE_IOCTL(MIXER_READ(SOUND_MIXER_DIGITAL2))
-COMPATIBLE_IOCTL(MIXER_READ(SOUND_MIXER_DIGITAL3))
-COMPATIBLE_IOCTL(MIXER_READ(SOUND_MIXER_PHONEIN))
-COMPATIBLE_IOCTL(MIXER_READ(SOUND_MIXER_PHONEOUT))
-COMPATIBLE_IOCTL(MIXER_READ(SOUND_MIXER_VIDEO))
-COMPATIBLE_IOCTL(MIXER_READ(SOUND_MIXER_RADIO))
-COMPATIBLE_IOCTL(MIXER_READ(SOUND_MIXER_MONITOR))
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_MUTE)
-/* SOUND_MIXER_READ_ENHANCE,  same value as READ_MUTE */
-/* SOUND_MIXER_READ_LOUD,  same value as READ_MUTE */
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_RECSRC)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_DEVMASK)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_RECMASK)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_STEREODEVS)
-COMPATIBLE_IOCTL(SOUND_MIXER_READ_CAPS)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_VOLUME)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_BASS)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_TREBLE)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_SYNTH)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_PCM)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_SPEAKER)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_LINE)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_MIC)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_CD)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_IMIX)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_ALTPCM)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_RECLEV)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_IGAIN)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_OGAIN)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_LINE1)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_LINE2)
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_LINE3)
-COMPATIBLE_IOCTL(MIXER_WRITE(SOUND_MIXER_DIGITAL1))
-COMPATIBLE_IOCTL(MIXER_WRITE(SOUND_MIXER_DIGITAL2))
-COMPATIBLE_IOCTL(MIXER_WRITE(SOUND_MIXER_DIGITAL3))
-COMPATIBLE_IOCTL(MIXER_WRITE(SOUND_MIXER_PHONEIN))
-COMPATIBLE_IOCTL(MIXER_WRITE(SOUND_MIXER_PHONEOUT))
-COMPATIBLE_IOCTL(MIXER_WRITE(SOUND_MIXER_VIDEO))
-COMPATIBLE_IOCTL(MIXER_WRITE(SOUND_MIXER_RADIO))
-COMPATIBLE_IOCTL(MIXER_WRITE(SOUND_MIXER_MONITOR))
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_MUTE)
-/* SOUND_MIXER_WRITE_ENHANCE,  same value as WRITE_MUTE */
-/* SOUND_MIXER_WRITE_LOUD,  same value as WRITE_MUTE */
-COMPATIBLE_IOCTL(SOUND_MIXER_WRITE_RECSRC)
-COMPATIBLE_IOCTL(SOUND_MIXER_INFO)
-COMPATIBLE_IOCTL(SOUND_OLD_MIXER_INFO)
-COMPATIBLE_IOCTL(SOUND_MIXER_ACCESS)
-COMPATIBLE_IOCTL(SOUND_MIXER_AGC)
-COMPATIBLE_IOCTL(SOUND_MIXER_3DSE)
-COMPATIBLE_IOCTL(SOUND_MIXER_PRIVATE1)
-COMPATIBLE_IOCTL(SOUND_MIXER_PRIVATE2)
-COMPATIBLE_IOCTL(SOUND_MIXER_PRIVATE3)
-COMPATIBLE_IOCTL(SOUND_MIXER_PRIVATE4)
-COMPATIBLE_IOCTL(SOUND_MIXER_PRIVATE5)
-COMPATIBLE_IOCTL(SOUND_MIXER_GETLEVELS)
-COMPATIBLE_IOCTL(SOUND_MIXER_SETLEVELS)
-COMPATIBLE_IOCTL(OSS_GETVERSION)
 /* Raw devices */
 COMPATIBLE_IOCTL(RAW_SETBIND)
 COMPATIBLE_IOCTL(RAW_GETBIND)
diff --git a/sound/core/oss/pcm_oss.c b/sound/core/oss/pcm_oss.c
index f57c610d7523..13db77771f0f 100644
--- a/sound/core/oss/pcm_oss.c
+++ b/sound/core/oss/pcm_oss.c
@@ -2717,6 +2717,10 @@ static long snd_pcm_oss_ioctl(struct file *file, unsigned int cmd, unsigned long
 static long snd_pcm_oss_ioctl_compat(struct file *file, unsigned int cmd,
 				     unsigned long arg)
 {
+	/*
+	 * Everything is compatbile except SNDCTL_DSP_MAPINBUF/SNDCTL_DSP_MAPOUTBUF,
+	 * which are not implemented for the native case either
+	 */
 	return snd_pcm_oss_ioctl(file, cmd, (unsigned long)compat_ptr(arg));
 }
 #else
diff --git a/sound/oss/dmasound/dmasound_core.c b/sound/oss/dmasound/dmasound_core.c
index fc9bcd47d6a4..f802ea331e24 100644
--- a/sound/oss/dmasound/dmasound_core.c
+++ b/sound/oss/dmasound/dmasound_core.c
@@ -384,6 +384,7 @@ static const struct file_operations mixer_fops =
 	.owner		= THIS_MODULE,
 	.llseek		= no_llseek,
 	.unlocked_ioctl	= mixer_unlocked_ioctl,
+	.compat_ioctl	= compat_ptr_ioctl,
 	.open		= mixer_open,
 	.release	= mixer_release,
 };
@@ -1167,6 +1168,7 @@ static const struct file_operations sq_fops =
 	.write		= sq_write,
 	.poll		= sq_poll,
 	.unlocked_ioctl	= sq_unlocked_ioctl,
+	.compat_ioctl	= compat_ptr_ioctl,
 	.open		= sq_open,
 	.release	= sq_release,
 };
-- 
2.20.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
