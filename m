Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 183DF195EE2
	for <lists+linux-um@lfdr.de>; Fri, 27 Mar 2020 20:38:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rp4ffDeeh/h5ngkZLw0Nlm5EHW4jQpZhoqAKhEEz4IA=; b=aZ1mQx/1AET+I6
	t16J224kwyJH8AHmBtnTIC7sdC1tP+aOALw3kbtQvtQFYOz8kSBCjPKiXIh60/9aiil02snLH0msQ
	62sMYEe+rFCxaj3B5609m93CzFfdGuvN65mC3KCiuxnwCHSotkNt9VUv3W1YDDhJ7XX7IJeTUea6+
	ayNO5yDXZ6eVwnM7L7LxuOfFievjemTz4agYV2/bvKzJvP+yakp+2bfmUUTWmaE1/FeskwvnEZ/HF
	tXxGefBYtPfPiILGhNgDAxOEitgtcnriTxRC6AG3a0Uw/r4oP0c4qdJq1+fguWVMHY24+C98AM3Bz
	AH0jdUV5uWEp3BdrnIGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHunn-0000T5-Kn; Fri, 27 Mar 2020 19:37:59 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHunl-0000S2-76
 for linux-um@lists.infradead.org; Fri, 27 Mar 2020 19:37:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585337871;
 bh=TarnDvK03R5OkAwxQLkYshS6zrE7QtGDv0yDW0/OpmU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=RUaNUpoEaB6PteNVLmClccvLXaT2/KjRwkUKp4U/TkJwEbYyZf/Mp4aZ8f/Sm2hdx
 4J1MPuTG/rK0DpTkNJGq9mR6BwqbQMFYDbDMyzS1DA6nIsMD5jRqlguTWG9JU9petZ
 k1srTGU5wSquc0t5LEo7y2KvXJYuhrC65HmOOQko=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([82.19.195.159]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1MK3Rm-1iwOrx1gyc-00LWIu; Fri, 27 Mar 2020 20:37:51 +0100
From: Alex Dewar <alex.dewar@gmx.co.uk>
To: 
Subject: [PATCH] um: Remove some unnecessary NULL checks in vector_user.c
Date: Fri, 27 Mar 2020 19:36:25 +0000
Message-Id: <20200327193626.82329-1-alex.dewar@gmx.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:kVSEqb+E7PCctOfuSvs+ejr1Qi393zTPSWxd19Z9576GecgGm7n
 foEqUO34lrbD8dF74F7iesFAz51fS8w/TkeQk8JH43ITcAC8RRw12fRrvv+tG5v7GIKrEjV
 F+EH+YXuos/y3U8NVnEUWSorfA8XeN3H1tw3BD5CtyRYSiQcoIE3T5WOkzit/iTU1stpVx2
 EoabZ6jpOHyx8ms0q8Zmw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wym9GrTofkQ=:RmM4uceM7nIXWNuFgZreVv
 enZ7UYCyfpkqUUqUW/cetOvpm5p7u457rqrSajlZy9Wt21iK1ILrSbkAIJEQkX1S0JBSJQv+Y
 0D7yujHwZPFTfDQj1pIoPs94oUL29xvB58NED+I42+dqEngYm9cxFb+2TqZ499+jz51zVcYRw
 kCaf/gnfk6KpTNLywwZlp1nEq4n1FhM9pQml+WxbOt/wM3eKeeF7OYjA2qlwD8Ogi9Ibok6uZ
 apJ9FdNiwfTvNoKgWRESz6yvyygUZaDFpFavIW7Pi1njR5u+PRYL6/37rFdgmpMFcqqPudCsn
 8ccI8EktL+XFVssfHx9LA2a910n4POYdbkPpIlCAJVoAvf7oYrqTgrZKSe6hYcasBH0IxADOu
 NODhZzSXIMTOcFF1n6fW4iL4dTz2d/0T5v7jQNP1jtb4vWZFt1BUvqIsmtVzBOspPSHbQk7pT
 lyv2nF71oW106IId/xyEnAVBsneXw+22yiPvMgfkJDrCWEqT+LhGTxkKEm2Tv3BDP46YxT4X5
 YrX0/W0hJILILidnvJGimy5+Oc/LhQKu2Tfr/a0vZ0ZaG1mdfxwCzElnD4XgTU80P9jPR4QZg
 mumdhhvSB4QGHiwLxPIgfZ5J5MV4K/nrkv4H3sI6Dc9poHOh9JS1i3370WEMHjJv2VRasFqcj
 Cq92X4eTpGcl9onILqP79elsD8XeCWI3GwB8ssu/NZWwYISUcdPtZ9mb/84wct3JMevZNMroi
 kqK6hk6ZuDroMmhaQNi9QXyb5Tt00kJ56YROuXZsUDKycKI9zGV74zMpAnf416vSDQuawzMOS
 kAgipk6LK7InGU4p5eFy0zjnK0zEY0MIcWqRTqSFCCW1bpRHw8MygifSxeIDh9v8HHAJZHtOJ
 9HSeSODrPnj0RMTrvfQwApPavXIm4WDI7I/+2PecVfS14lLM0ETOHgwG+M0Y0XBBI0eAcrvAh
 Z2jV7GzkLSxIaonyKRMiTn4tFtcSK8Ko7mwT1h/c3LTIV5gJ+8qAOXgNPYsEyOOesnbaoRsc8
 CT4OrTnW6Mdkyj35jiQGeskgfvu09/j8zbYIiq5MNDL4Disa0V57CC2uz5TFr2yXFUQ6gZUBF
 OUi3p13iJad1D3ogR3y9U1/CZUPQK1+gkdHJjouE3/CPmVDS4Y4cOk6LdlB3YnUxsbJdKTtu9
 87+YytRBEz3UBTGwI4iikkLZERPsoUrdrJPZKX/q4M5qGURCw2dvZQ7rDoBa6ZtOWDYmfm/c4
 /xY793jGivdw1cQm0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_123757_553510_0B520040 
X-CRM114-Status: UNSURE (   6.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Dewar <alex.dewar@gmx.co.uk>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

kfree() already checks for null pointers, so additional checking is
unnecessary.

Signed-off-by: Alex Dewar <alex.dewar@gmx.co.uk>
---
 arch/um/drivers/vector_user.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/arch/um/drivers/vector_user.c b/arch/um/drivers/vector_user.c
index ddcd917be0af..aa28e9eecb7b 100644
--- a/arch/um/drivers/vector_user.c
+++ b/arch/um/drivers/vector_user.c
@@ -221,8 +221,7 @@ static struct vector_fds *user_init_tap_fds(struct arglist *ifspec)
 	return result;
 tap_cleanup:
 	printk(UM_KERN_ERR "user_init_tap: init failed, error %d", fd);
-	if (result != NULL)
-		kfree(result);
+	kfree(result);
 	return NULL;
 }

@@ -266,8 +265,7 @@ static struct vector_fds *user_init_hybrid_fds(struct arglist *ifspec)
 	return result;
 hybrid_cleanup:
 	printk(UM_KERN_ERR "user_init_hybrid: init failed");
-	if (result != NULL)
-		kfree(result);
+	kfree(result);
 	return NULL;
 }

@@ -344,10 +342,8 @@ static struct vector_fds *user_init_unix_fds(struct arglist *ifspec, int id)
 unix_cleanup:
 	if (fd >= 0)
 		os_close_file(fd);
-	if (remote_addr != NULL)
-		kfree(remote_addr);
-	if (result != NULL)
-		kfree(result);
+	kfree(remote_addr);
+	kfree(result);
 	return NULL;
 }

@@ -382,8 +378,7 @@ static struct vector_fds *user_init_raw_fds(struct arglist *ifspec)
 	return result;
 raw_cleanup:
 	printk(UM_KERN_ERR "user_init_raw: init failed, error %d", err);
-	if (result != NULL)
-		kfree(result);
+	kfree(result);
 	return NULL;
 }

--
2.26.0


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
