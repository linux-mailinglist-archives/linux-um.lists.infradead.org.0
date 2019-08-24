Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D2C9BA0E
	for <lists+linux-um@lfdr.de>; Sat, 24 Aug 2019 03:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dacg02I3Y6bYfppE9A8OEN+jUu1KynBQWyNR3fOTggM=; b=ueScJVfY0RjEY1
	wvplOngYRYWUOUPI6XwNHXVPP8xqE+6QluRpFHavzzludAV+wnGCH2gTBUk+dLAXe0HPKCqXf5iPB
	4CkrsJYJeOtkKOVpZHqxz/1ZyIGSbSWKzda3ZbscIi5NO9Buk8OcLIukguhdM2HjwVEPCmwGs2bhC
	QDqSQ5e+g/2Mg5qD65nKJ0f0TVDGjkSjqYk6fE+5e3foTQR8V2xxNXKE7FCVAvRjNP1Yp/hKooO5J
	hl3r17GDf2O7hnyXFx1+/TdrvFO2cMsPvNUcRb0vDra9H6e/+yCTb/gi+St7PQKlNA6E/5wa5fDo+
	uU1g2fu75hPwV9XmvKVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Kk4-0000zb-6g; Sat, 24 Aug 2019 01:21:20 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Kk0-0000zG-ME
 for linux-um@lists.infradead.org; Sat, 24 Aug 2019 01:21:18 +0000
Received: by mail-wm1-x342.google.com with SMTP id 10so10362507wmp.3
 for <linux-um@lists.infradead.org>; Fri, 23 Aug 2019 18:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:openpgp:autocrypt:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=0i86/2BX0IhhURvoTPHMIo1eGnzU0Fwrm/v4qbhO7HM=;
 b=SQs/wBgYxt/24OQ0E11kmnyURnMXH+uu6tmW8JK8C0RX6Ncp5p9OntoubNT4yQ50tg
 yAwW8Qy+GXuni5v0I5P1zYt3vQ3Dbcz52n3r86YHvn6DLwUFSF6beUiWOD88SjF+cA7h
 1aOCGseyJGAVo7vLyZc83SJwOIhFCQlYpmcwcNwi9o7/TZmwrEY/4+0tfocxy3ClaoeU
 5MtgU7SzeIs8zH4wjVSLqfdOQep7E/NElzgofypxvHsO61lh0aZxUExOUQWYAWrlM4X3
 zqgUPBM84SKonWmCqdHDep0uAs9jD3f9XpopHiO43Ovt39WA+s2vLLhckWK8k7qQhuMm
 920g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:openpgp:autocrypt:message-id
 :date:user-agent:mime-version:content-language
 :content-transfer-encoding;
 bh=0i86/2BX0IhhURvoTPHMIo1eGnzU0Fwrm/v4qbhO7HM=;
 b=QguHpRkP4vzD74fMMowlBEtnb2gsL2H0ErnusiQ2booHPVSECRo2YDiOk6fI5pICb1
 p84GrsbAnUTLswTLwVqj5GRDMChqFqW1v4JAB36w336JhvOkS5HKOoqzAZgNYi+91ajx
 YxeKPK2jbwkolFZa2pwMUOCbkckkGEn2wpGVRMJkDiFr9e7QiLZDVrFauhDqR1Hi4MRh
 THg7SUyVys1Cvw05H1MbIJhaM3tHXoaEEPRVUrpBbFFbxDs5BVS5rSzpOcpJC86w8cqr
 5EvrvxU90IIT4DwPxmN8zFMrNow7iczyvkbLpLdN/IWDEC8QeKVylF5WmXsEx9+snPXY
 i3dQ==
X-Gm-Message-State: APjAAAU48JqeAdlY5O+LMY2PGL0/jrcBAM9bkTfnI+zfj2S5LOj7hdZl
 WronPqbHhdeU+mFm2aVSZ+xrB+XI
X-Google-Smtp-Source: APXvYqy1PQwYUCT+xcB3JCPySfl7xBhfLUYtPZNLyEifgnOHG3xKlXHFwGfdvLLYrZWkyGSiSM5K5A==
X-Received: by 2002:a1c:2582:: with SMTP id l124mr8496086wml.153.1566609672522; 
 Fri, 23 Aug 2019 18:21:12 -0700 (PDT)
Received: from home.thecybershadow.net ([89.28.117.31])
 by smtp.gmail.com with ESMTPSA id j16sm4497600wrp.62.2019.08.23.18.21.11
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 23 Aug 2019 18:21:11 -0700 (PDT)
To: linux-um@lists.infradead.org
From: Vladimir Panteleev <thecybershadow@gmail.com>
Subject: Segmentation fault in blk-mq with loop device
Openpgp: preference=signencrypt
Autocrypt: addr=thecybershadow@gmail.com; prefer-encrypt=mutual; keydata=
 mQENBFar2yQBCADWo1C5Ir1smytf7+vWGCEoZgb/4XKkxrp+GUO7eJO8iYCWHTmCPZpi6p/z
 y6eh+NYcDQSRzKA99ffgdN+aT8/L6d63pYdsgtDmX/yrFWyLOVgW62LQpC/To4MTJAIgY/Rg
 /VjdifOJtYFvr+BKJwFCTfcviy4EQjsfHLnyJjvL9BiCXfSBXASc/Gn9WOTL5ZNpk4TStGXO
 +/2PIKeg228LtJ5vc/vemBo4hcjJv9ttX7dCebpSAbNo7GgOs8XNgJU2mEcra3IMT15dGk0/
 KpGMx7bMinTIlxx/BAGt5M5w8OnNi4p2AcKzvH18OTE7Lssn5ub8Ains32hbUFf18hJbABEB
 AAG0K1ZsYWRpbWlyIFBhbnRlbGVldiA8Z3BnQHRoZWN5YmVyc2hhZG93Lm5ldD6JAVEEEwEI
 ADsCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AWIQS77RsIjO1/lYkX++hQBPD60FFXbQUC
 WJ9eKQIZAQAKCRBQBPD60FFXbX0yB/9PEcY3H9mEZtU1UVqxLzPMVXUX5Khk6RD3Jt8/V7aA
 vu8VO4qwmnhadRPHXxVwnnVotao9d5U1zHw0gDhvJWelGRm52mKAPtyPwtBy4y3oXzymLfOM
 RIZxwxMY5RkbqdgWNEY7tCplABnWmaUMm5qDIjzkbEabpiqGySMy2gy6lQHUdRHcgFqO+ceZ
 R7IOPEh2fnVuQc5t1V56OHHRQZMQLgGupInST+svryv2sfr5+ZJqtwWL3nn8aFER6eIWzDDu
 m9y2RZnykbfwd56c81bpY6qqZtHkyt0hImkOwOiBj3UWtJvgZ95WnJ8NBPHPcttgL3vQTsXu
 BRYEjQZln81tuQENBFar2yQBCADFGh8NqHMtBT8F4m/UzQx0QAMDyPQN3CjKn67gW//8gd5v
 TmZCws2TwjaGlrJmwhGseUkZ368dth5vZLPu95MVSo2TBGf+XIVPsGzX6cuIRNtvQOT5YSUz
 uOghU0wh5gjw7evg7d0qfZRTZ2/JAuWmeTvPl66dasUoqKxVrq5o2MXdYkI6KoSxTsal3/36
 ii5cl2GfzE+bVAj3MB8B0ktdIZCHAJT8n+8h10/5TD5oEkWjhWdATeWMrC2bZwFykgSKjY/3
 jUvmfeyJp56sw5w3evZLQdQCo+NWoFGHdHBm0onyZbgbWS+2DEQI+ee0t6q6/iR1tf8VPX2U
 LY0jjiZ7ABEBAAGJAR8EGAEIAAkFAlar2yQCGwwACgkQUATw+tBRV200GQf8CaQxTy7OhWQ5
 O47G3+yKuBxDnYoP9h+T/sKcWsOUgy7i/vbqfkJvrqME8rRiO9YB/1/no1KqXm+gq0rSeZjy
 DA3mk9pNKvreHX9VO1md4r/vZF6jTwxNI7K97T34hZJGUQqsGzd8kMAvrgP199tXGG2+NOXv
 ih44I0of/VFFklNmO87y/Vn5F8OfNzwiHLNleBXZ1bMp/QBMd3HtahZVk7xRMNAKYqkyvI/C
 z0kgoHYP9wKpSmbPXJ5Qq0ndAJ7KIRcIwwDcbh3/F9Icj/N3v0SpxuJO7l0KlXQIWQ7TSpaO
 liYT2ARnGHHYcE2OhA0ixGV3Y3suUhk+GQaRQoiytw==
Message-ID: <1e2a705a-79eb-ce96-1a23-d5b981fff5d8@gmail.com>
Date: Sat, 24 Aug 2019 01:21:10 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_182116_756301_CCBE241B 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thecybershadow[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi,

I'm trying to get the btrfs-progs test suite running under UML.

In a test in which it mounts a loop device, UML is segfaulting for me:

Modules linked in:
Pid: 20, comm: kworker/0:1H Not tainted 5.3.0-rc3
RIP: 0033:[<00000000602b074e>]
RSP: 00000000de6f3e18  EFLAGS: 00010246
RAX: 00000000602b074b RBX: 00000000de6a4600 RCX: 0000000000002000
RDX: 0000000000000001 RSI: 00000000de6a4600 RDI: 0000000000000000
RBP: 00000000de6f3e70 R08: 0000000000000000 R09: 0000000000000001
R10: fefefefefefefeff R11: 00000000de000030 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000001
Kernel panic - not syncing: Segfault with no mm
CPU: 0 PID: 20 Comm: kworker/0:1H Not tainted 5.3.0-rc3 #1
Workqueue: kblockd blk_mq_requeue_work
Stack:
  602b4e20 de69b4d0 00000000 de69b4d0
  00000000 de6f3e70 de6a1540 de6f3e80
  de69b4d0 602b4d40 00000000 de6f3eb0
Call Trace:
  [<602b4e20>] ? blk_mq_sched_insert_request+0xe0/0x107
  [<602b4d40>] ? blk_mq_sched_insert_request+0x0/0x107
  [<602b0e68>] blk_mq_requeue_work+0xd5/0x138
  [<6004d7d2>] process_one_work+0x1eb/0x34f
  [<603f8b40>] ? __schedule+0x0/0x358
  [<6004f5e9>] ? wq_worker_running+0x10/0x32
  [<6004b30a>] ? move_linked_works+0x0/0x4f
  [<6004eac3>] worker_thread+0x338/0x47b
  [<6004b4ad>] ? set_pf_worker+0x0/0x62
  [<60052c42>] ? __kthread_parkme+0x4f/0x97
  [<6003a4e6>] ? do_exit+0x0/0x902
  [<6004e78b>] ? worker_thread+0x0/0x47b
  [<60053168>] kthread+0x1a4/0x1ac
  [<6001ced9>] new_thread_handler+0x81/0xb2

Running under gdb provides a slightly different stack trace:

#0  blk_mq_dispatch_rq_list (q=<optimized out>, list=0xddef3d80, 
got_budget=false) at 
/tmp/btrfs-ci-work/src/linux-33920f1ec5bf47c5c0a1d2113989bdd9dfb3fae9/block/blk-mq.c:1219
#1  0x00000000602b4c9c in blk_mq_sched_dispatch_requests 
(hctx=0xdde9ee00) at 
/tmp/btrfs-ci-work/src/linux-33920f1ec5bf47c5c0a1d2113989bdd9dfb3fae9/block/blk-mq-sched.c:222
#2  0x00000000602af159 in __blk_mq_run_hw_queue (hctx=0xdde9ee00) at 
/tmp/btrfs-ci-work/src/linux-33920f1ec5bf47c5c0a1d2113989bdd9dfb3fae9/block/blk-mq.c:1387
#3  0x00000000602af1b4 in __blk_mq_delay_run_hw_queue (hctx=0xdde9ee00, 
async=<optimized out>, msecs=<optimized out>) at 
/tmp/btrfs-ci-work/src/linux-33920f1ec5bf47c5c0a1d2113989bdd9dfb3fae9/block/blk-mq.c:1455
#4  0x00000000602af30c in blk_mq_run_hw_queue (hctx=0xdde9ee00, 
async=<optimized out>) at 
/tmp/btrfs-ci-work/src/linux-33920f1ec5bf47c5c0a1d2113989bdd9dfb3fae9/block/blk-mq.c:1492
#5  0x00000000602af356 in blk_mq_run_hw_queues (q=0xdde9b4d0, 
async=false) at 
/tmp/btrfs-ci-work/src/linux-33920f1ec5bf47c5c0a1d2113989bdd9dfb3fae9/block/blk-mq.c:1509
#6  0x00000000602b0ec0 in blk_mq_requeue_work (work=<optimized out>) at 
/tmp/btrfs-ci-work/src/linux-33920f1ec5bf47c5c0a1d2113989bdd9dfb3fae9/block/blk-mq.c:762
#7  0x000000006004d7d2 in process_one_work (worker=0xdddc1240, 
work=0xdde9b960) at 
/tmp/btrfs-ci-work/src/linux-33920f1ec5bf47c5c0a1d2113989bdd9dfb3fae9/kernel/workqueue.c:2269
#8  0x000000006004eac3 in worker_thread (__worker=0xdddc1240) at 
/tmp/btrfs-ci-work/src/linux-33920f1ec5bf47c5c0a1d2113989bdd9dfb3fae9/kernel/workqueue.c:2415
#9  0x0000000060053168 in kthread (_create=0xddeaad00) at 
/tmp/btrfs-ci-work/src/linux-33920f1ec5bf47c5c0a1d2113989bdd9dfb3fae9/kernel/kthread.c:255
#10 0x000000006001ced9 in new_thread_handler () at 
/tmp/btrfs-ci-work/src/linux-33920f1ec5bf47c5c0a1d2113989bdd9dfb3fae9/arch/um/kernel/process.c:133
#11 0x0000000000000000 in ?? ()

Here is how I build the kernel:

https://github.com/CyberShadow/btrfs-ci/blob/641f385b4ff126828556850e8aafb3839a77d1d5/src/build-kernel.sh

Any idea what causes it? Is it a kernel bug, a problem with the kernel 
configuration?

Thanks!

-- 
Best regards,
  Vladimir

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
